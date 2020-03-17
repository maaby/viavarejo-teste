# language: pt
# Desenvolvimento guiado por comportamento (BDD)

Funcionalidade: Login no Facebook

# História do usuário:
#     Eu como usuário do Facebook
#     Quero fazer o login com usuário e senha
#     Para que eu possa postar fotos no meu perfil

@loginFacebook
Cenário: Usuário ou senha incorretos

    Dado que eu acesse o login do Facebook
    Quando digito um usuário válido
    E senha incorreta
    Então sistema deve apresentar a mensagem de senha inválida 
