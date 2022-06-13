#Language: pt

Funcionalidade: Login
    Para que eu possa acessar o sistema
    Sendo usuário preciamente cadastrado
    Posso acessar o sistema com email e senha
    
@login_happy
Cenario:Acesso
    Quando eu faço login com "rodriguesmoraes@gmail.com" e "rm1234"
    Então devo ser autenticado
    E devo ver "rodriguesmoraes" na area logada

Cenario: Senha Invalida
    Quando eu faço login com "rodriguesmoraes@gmail.com" e "abc1234"
    Então não devo ser autenticado
    E devo ver a mensagem de alerta "usuario/senha invalido"

Cenario: Usuario não existe
    Quando eu faço login com "rrm@gmail.com" e "1234"
    Então não devo ser autenticado
    E devo ver a mensagem de alerta "usuario/senha invalido"

Cenario: Email não informado
    Quando eu faço login com "" e "rm1234"
    Então não devo ser autenticado
    E devo ver a mensagem "cade o email"

Cenario: Senha não informada
    Quando eu faço login com "teste@gmail.com" e ""
    Então não devo ser autenticado
    E devo ver a mensagem de alerta "Cade a senha"