class AeronavesController < ApplicationController
  before_action :set_aeronafe, only: [:show, :edit, :update, :destroy]

  # GET /aeronaves
  # GET /aeronaves.json
  def index
    @aeronaves = Aeronave.all
  end

  # GET /aeronaves/1
  # GET /aeronaves/1.json
  def show
  end

  # GET /aeronaves/new
  def new
    @aeronafe = Aeronave.new
    @nave_nodrizas = NaveNodriza.all
  end

  # GET /aeronaves/1/edit
  def edit
  end

  # POST /aeronaves
  # POST /aeronaves.json
  def create
    @aeronafe = Aeronave.new(aeronafe_params)

    respond_to do |format|
      if @aeronafe.save
        format.html { redirect_to @aeronafe, notice: 'Aeronave was successfully created.' }
        format.json { render action: 'show', status: :created, location: @aeronafe }
      else
        format.html { render action: 'new' }
        format.json { render json: @aeronafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aeronaves/1
  # PATCH/PUT /aeronaves/1.json
  def update
    respond_to do |format|
      if @aeronafe.update(aeronafe_params)
        format.html { redirect_to @aeronafe, notice: 'Aeronave was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @aeronafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aeronaves/1
  # DELETE /aeronaves/1.json
  def destroy
    @aeronafe.destroy
    respond_to do |format|
      format.html { redirect_to aeronaves_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aeronafe
      @aeronafe = Aeronave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aeronafe_params
      params.require(:aeronave).permit(:nombre, :max_marcianos, :nave_origen, :nave_destino)
    end
end
