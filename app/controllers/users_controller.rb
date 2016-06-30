class UsersController < ApplicationController

  def new
    @user = User.new
  end

  #Cria novos usuarios
  def create
    @user = User.create(user_params)
    if @user.save
      flash[:success] = "Usuario criado com sucesso"
      redirect_to compromissos_path
    else
      flash[:danger] = "Erro ao criar usuario"
      render :new
    end
  end

  private

    # Libera parametros do usuario para cadastro
    def user_params
      params.require(:user).permit!
    end
end
