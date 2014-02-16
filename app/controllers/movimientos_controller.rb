class MovimientosController < ApplicationController
  before_action :set_movimiento, only: [:show, :edit, :update, :destroy]

  # GET /movimientos
  # GET /movimientos.json
  def index
    @movimientos = Movimiento.all.reverse
  end

  # GET /movimientos/1
  # GET /movimientos/1.json
  def show
  end

  # GET /movimientos/new
  def new
    @movimiento = Movimiento.new
  end

  # GET /movimientos/1/edit
  def edit
  end

  # POST /movimientos
  # POST /movimientos.json
  def create
    @movimiento = Movimiento.new(movimiento_params)

    if(@movimiento.tipo_movimiento == TipoMovimiento::entrada)
      @movimiento.pasajero.aeronave_id = @movimiento.aeronave_id
    else
      @movimiento.pasajero.aeronave_id = nil
    end

    @movimiento.pasajero.save

    respond_to do |format|
      if @movimiento.save
        format.html { redirect_to movimientos_path, notice: 'Movimiento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @movimiento }
      else
        format.html { render action: 'new' }
        format.json { render json: @movimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimientos/1
  # PATCH/PUT /movimientos/1.json
  def update
    respond_to do |format|
      if @movimiento.update(movimiento_params)
        format.html { redirect_to movimientos_path, notice: 'Movimiento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @movimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimientos/1
  # DELETE /movimientos/1.json
  def destroy
    @movimiento.destroy
    respond_to do |format|
      format.html { redirect_to movimientos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimiento
      @movimiento = Movimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movimiento_params
      params.require(:movimiento).permit(:tipo_movimiento, :pasajero_id, :aeronave_id)
    end
end
