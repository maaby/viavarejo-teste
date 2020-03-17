Dado("que eu acesse o login do Facebook") do
    @login.visitUrl()
  end
  
  Quando("digito um usuário válido") do
    @login.setEmail()
    
  end
  
  Quando("senha incorreta") do
    @login.setSenha()
    @login.clickEntrar()
    
  end
  
  Então("sistema deve apresentar a mensagem de senha inválida") do
    
    page.assert_text(@login.verificaErroLoginIncorreto(), "The password you’ve entered is incorrect. Forgot Password?")
    
  end