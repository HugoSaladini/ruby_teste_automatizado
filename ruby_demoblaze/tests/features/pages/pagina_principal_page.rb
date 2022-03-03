class PaginaPrincipalPage < SitePrism::Page

    element :nome_usuario, '#nameofuser'
    element :sair, '#logout2'

    def deslogar
      sair.click

    end

end