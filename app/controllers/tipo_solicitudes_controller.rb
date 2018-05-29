class TipoSolicitudesController < ApplicationController
  before_action :set_tipo_solicitude, only: [:show, :edit, :update, :destroy]

  # GET /tipo_solicitudes
  # GET /tipo_solicitudes.json
  def index
    @tipo_solicitudes = TipoSolicitude.all
  end

  # GET /tipo_solicitudes/1
  # GET /tipo_solicitudes/1.json
  def show
  end

  # GET /tipo_solicitudes/new
  def new
    @tipo_solicitude = TipoSolicitude.new
  end

  # GET /tipo_solicitudes/1/edit
  def edit
  end

  # POST /tipo_solicitudes
  # POST /tipo_solicitudes.json
  def create
    @tipo_solicitude = TipoSolicitude.new(tipo_solicitude_params)

    respond_to do |format|
      if @tipo_solicitude.save
        format.html { redirect_to @tipo_solicitude, notice: 'Tipo solicitude was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_solicitude }
      else
        format.html { render :new }
        format.json { render json: @tipo_solicitude.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_solicitudes/1
  # PATCH/PUT /tipo_solicitudes/1.json
  def update
    respond_to do |format|
      if @tipo_solicitude.update(tipo_solicitude_params)
        format.html { redirect_to @tipo_solicitude, notice: 'Tipo solicitude was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_solicitude }
      else
        format.html { render :edit }
        format.json { render json: @tipo_solicitude.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_solicitudes/1
  # DELETE /tipo_solicitudes/1.json
  def destroy
    @tipo_solicitude.destroy
    respond_to do |format|
      format.html { redirect_to tipo_solicitudes_url, notice: 'Tipo solicitude was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_solicitude
      @tipo_solicitude = TipoSolicitude.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_solicitude_params
      params.require(:tipo_solicitude).permit(:nombre_tipo, :id_parametros)
    end
end
