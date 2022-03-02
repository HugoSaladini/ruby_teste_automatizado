Dado('que eu tenha um usuario') do |table|
  @username = table.rows_hash['username']
  @password = table.rows_hash['password']
  @home = HomePage.new
  @home.load

  #visit('https://www.demoblaze.com/')
end

Quando('eu preencho meus dados') do
  
  @home.preencher_usuario('saladini02','1234')

  #click_link("login2")
  #fill_in 'loginusername', with:@username
  #fill_in 'loginpassword', with:@password
  #click_button("Log in")
  
end

Entao('eu verifico se o usuario esta logado') do
  sleep(2)
  #expect(page).to have_corrente_path('https://www.demoblaze.com/index.html', url: true)
  expect(page).to have_content('Welcome saladini02')
  #@nome_user = find('nameofuser')
  #expect(@nome_user.text).to eql 'Welcome saladini02'

end