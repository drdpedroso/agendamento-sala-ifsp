class CompromissosController < ApplicationController
  before_action :set_compromisso, only: [:show, :edit, :update, :destroy]
  # GET /compromissos
  # GET /compromissos.json
  def index
    @user = User.find(current_user)
    @compromissos = Compromisso.all
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
  end

  # GET /compromissos/1
  # GET /compromissos/1.json
  def show
  end

  # GET /compromissos/new
  def new
    @compromisso = Compromisso.new
    @salas = Sala.all
  end

  # GET /compromissos/1/edit
  def edit
  end

  # POST /compromissos
  # POST /compromissos.json
  def create
    @compromisso = Compromisso.new(compromisso_params)
    @compromisso.date = Date.today   # Atribui a data de hoje ao compromisso (usado apenas para controle no banco)
    @compromisso.user = User.find(current_user)  # Atribui o usuario da sessao ao usuario que criou o agendamento
      respond_to do |format|
        if @compromisso.save
          UserMailer.new_reservation(@compromisso)
          format.html { redirect_to @compromisso, notice: 'Agendamento criado com sucesso.' }
          format.json { render action: 'show', status: :created, location: @compromisso }
        else
          format.html { render action: 'new' }
          format.json { render json: @compromisso.errors, status: :unprocessable_entity }
        end
      end
  end

  # PATCH/PUT /compromissos/1
  # PATCH/PUT /compromissos/1.json
  def update
    respond_to do |format|
      if @compromisso.update(compromisso_params)
        format.html { redirect_to @compromisso, notice: 'Agendamento editado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @compromisso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compromissos/1
  # DELETE /compromissos/1.json
  def destroy
    @compromisso.destroy
    respond_to do |format|
      format.html { redirect_to compromissos_url }
      format.json { head :no_content }
    end
  end

  private
    # Compartilha callbacks 
    def set_compromisso
      @compromisso = Compromisso.find(params[:id])
    end

    # Controla os parametros autorizados (nunca confie na internet)
    def compromisso_params
      params.require(:compromisso).permit(:titulo, :texto, :start_date, :end_date, :sala_id)
    end
end
