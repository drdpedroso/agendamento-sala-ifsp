# agendamento-sala-ifsp
Repositorio do Sistema de Agendamento de salas do Instituto Federal de São Paulo campus Salto

Demo: http://agendamento-sala-ifsp.herokuapp.com/

Como usar? https://youtu.be/e7LwHWYLB1Q

# Primeiro checkout:
Rodar os seguintes comandos:

      bundle install
      
      bundle exec rake db:migrate
  
Subindo o Servidor local:

    rails server

# Como usar?

1 - Logar com superuser.
      
    root@root.com
      
    senha123

2 - Na parte superior (header), clique em Cadastrar para criar um novo usuario e em Novo Agendamento para criar um novo agendamento.

3 - Criando um agendamento: Preencha os campos pedidos no formulário e clique em criar agendamento. Uma tela de confirmaçao deverá ser exibida.

4 - Cadastrando novo usuario: Preencha os campos do formulário. O email deve ser unico no sistema e as senhas devem ser iguais nos dois campos(criaçao e confirmaçao). Caso tudo ocorra bem, voce será redirecionado para a tela de calendário.

5 - Voce pode editar/cancelar eventos que voce criou e que outros tenham criado(caso voce seja superusuario) apenas clicando no menu que fica no dia em que o evento foi agendado.



# Documentaçao/Diagramas:

    doc/



Duvidas? drdpedroso@gmail.com
