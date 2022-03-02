# language: pt

Funcionalidade: Fazer login

- Eu como usuario
- Quero me realizar o login com sucesso

@deslogar_conta
Cenario: Realizar login
Dado que eu tenha um usuario
|username|saladini02|
|password|1234|
Quando eu preencho meus dados
Entao eu verifico se o usuario esta logado
