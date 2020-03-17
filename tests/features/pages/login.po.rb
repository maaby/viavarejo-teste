class Login < SitePrism::Page

    element :email,     '#email'
    element :senha,     '#pass'
    element :btnEntrar, '#loginbutton'
    element :alertError, 'div[role="alert"]'

    def visitUrl()
        visit('/')
    end

    def setEmail()
        email.set('teste@teste.com.br')
    end

    def setSenha()
        senha.set('1245*')
    end

    def clickEntrar()
        btnEntrar.click()
    end


    def verificaErroLoginIncorreto()

        wait_until_alertError_visible(wait: 30)
        alertErrorText = alertError.text()
        alertErrorText
       
    end

end