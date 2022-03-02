class HomePage < SitePrism::Page

    set_url '/'
    element :btn_login, '#login2'
    element :campo_username, '#loginusername'
    element :campo_password, '#loginpassword'
    #element :btn_logar, 'input[<button type="button" onclick="logIn()" class="btn btn-primary">Log in</button>]'
    

    def preencher_usuario(user, senha)

        btn_login.click
        sleep(2)
        campo_username.set user
        campo_password.set senha
        #btn_logar.click
        click_button("Log in")

    end

end