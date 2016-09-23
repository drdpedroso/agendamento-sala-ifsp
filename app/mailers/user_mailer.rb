class UserMailer < ActionMailer::Base
  default from: "from@example.com"     #Colocar o email `from`

  # Metodo ativado sempre que um novo compromisso é gerado. Requer configuraçoes de SMTP para Rails.
  def new_reservation(compromisso)
     @compromisso = compromisso
     mail(subject: "Sua sala foi reservada com sucesso.")
  end
  
end
