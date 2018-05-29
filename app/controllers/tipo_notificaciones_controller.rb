class TipoNotificacionesController < ApplicationController
  before_action :set_tipo_notificacione, only: [:show, :edit, :update, :destroy]

  # GET /tipo_notificaciones
  # GET /tipo_notificaciones.json
  def index
    @tipo_notificaciones = TipoNotificacione.all
  end

  # GET /tipo_notificaciones/1
  # GET /tipo_notificaciones/1.json
  def show
  end

  # GET /tipo_notificaciones/new
  def new
    @tipo_notificacione = TipoNotificacione.new
  end

  # GET /tipo_notificaciones/1/edit
  def edit
  end

  # POST /tipo_notificaciones
  # POST /tipo_notificaciones.json
  def create
    @tipo_notificacione = TipoNotificacione.new(tipo_notificacione_params)

    respond_to do |format|
      if @tipo_notificacione.save
        format.html { redirect_to @tipo_notificacione, notice: 'Tipo notificacione was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_notificacione }
      else
        format.html { render :new }
        format.json { render json: @tipo_notificacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_notificaciones/1
  # PATCH/PUT /tipo_notificaciones/1.json
  def update
    respond_to do |format|
      if @tipo_notificacione.update(tipo_notificacione_params)
        format.html { redirect_to @tipo_notificacione, notice: 'Tipo notificacione was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_notificacione }
      else
        format.html { render :edit }
        format.json { render json: @tipo_notificacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_notificaciones/1
  # DELETE /tipo_notificaciones/1.json
  def destroy
    @tipo_notificacione.destroy
    respond_to do |format|
      format.html { redirect_to tipo_notificaciones_url, notice: 'Tipo notificacione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_notificacione
      @tipo_notificacione = TipoNotificacione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_notificacione_params
      params.require(:tipo_notificacione).permit(:nombre, :descripcion, :icono)
    end
end
