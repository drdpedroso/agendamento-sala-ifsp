class LoginController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Você está logado!"
      redirect_to compromissos_path
    else
      flash.now[:danger] = "Erro ao logar"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
