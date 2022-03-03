Dado('que eu tenha um usuario') do |table|
  @username = table.rows_hash['username']
  @password = table.rows_hash['password']
  home.load

end

Quando('eu preencho meus dados') do
  
  home.preencher_usuario('saladini02','1234')
  
end

Entao('eu verifico se o usuario esta logado') do
  sleep(2)
  #expect(pagina_principal.nome_usuario).to have_content('Welcome saladini02')
  expect(pagina_principal.nome_usuario.text).to eql('Welcome saladini02')

end