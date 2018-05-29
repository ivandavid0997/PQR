class TipoSeguimientosController < ApplicationController
  before_action :set_tipo_seguimiento, only: [:show, :edit, :update, :destroy]

  # GET /tipo_seguimientos
  # GET /tipo_seguimientos.json
  def index
    @tipo_seguimientos = TipoSeguimiento.all
  end

  # GET /tipo_seguimientos/1
  # GET /tipo_seguimientos/1.json
  def show
  end

  # GET /tipo_seguimientos/new
  def new
    @tipo_seguimiento = TipoSeguimiento.new
  end

  # GET /tipo_seguimientos/1/edit
  def edit
  end

  # POST /tipo_seguimientos
  # POST /tipo_seguimientos.json
  def create
    @tipo_seguimiento = TipoSeguimiento.new(tipo_seguimiento_params)

    respond_to do |format|
      if @tipo_seguimiento.save
        format.html { redirect_to @tipo_seguimiento, notice: 'Tipo seguimiento was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_seguimiento }
      else
        format.html { render :new }
        format.json { render json: @tipo_seguimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_seguimientos/1
  # PATCH/PUT /tipo_seguimientos/1.json
  def update
    respond_to do |format|
      if @tipo_seguimiento.update(tipo_seguimiento_params)
        format.html { redirect_to @tipo_seguimiento, notice: 'Tipo seguimiento was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_seguimiento }
      else
        format.html { render :edit }
        format.json { render json: @tipo_seguimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_seguimientos/1
  # DELETE /tipo_seguimientos/1.json
  def destroy
    @tipo_seguimiento.destroy
    respond_to do |format|
      format.html { redirect_to tipo_seguimientos_url, notice: 'Tipo seguimiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_seguimiento
      @tipo_seguimiento = TipoSeguimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_seguimiento_params
      params.require(:tipo_seguimiento).permit(:nombre)
    end
end
