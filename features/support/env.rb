
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new{
        app,
        browser: :chrome,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
            'chromeOptions' => { 'args' => {'--disable-infobars',
                                            'window-size=1600,1024'}}

        )
        
    }
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 30
    config.app_host = 'https://m2-stage.drogasil.com.br/'

end