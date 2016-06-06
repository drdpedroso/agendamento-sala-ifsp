class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_reservation(compromisso)
   @compromisso = compromisso
   mail(subject: "Sua sala foi reservada com sucesso.")
 end
end
