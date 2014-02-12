class RevisionPasajerosController < ApplicationController
  before_action :set_revision_pasajero, only: [:show, :edit, :update, :destroy]

  # GET /revision_pasajeros
  # GET /revision_pasajeros.json
  def index
    @revision_pasajeros = RevisionPasajero.all
  end

  # GET /revision_pasajeros/1
  # GET /revision_pasajeros/1.json
  def show
  end

  # GET /revision_pasajeros/new
  def new
    @revision_pasajero = RevisionPasajero.new
  end

  # GET /revision_pasajeros/1/edit
  def edit
  end

  # POST /revision_pasajeros
  # POST /revision_pasajeros.json
  def create
    @revision_pasajero = RevisionPasajero.new(revision_pasajero_params)

    respond_to do |format|
      if @revision_pasajero.save
        format.html { redirect_to @revision_pasajero, notice: 'Revision pasajero was successfully created.' }
        format.json { render action: 'show', status: :created, location: @revision_pasajero }
      else
        format.html { render action: 'new' }
        format.json { render json: @revision_pasajero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /revision_pasajeros/1
  # PATCH/PUT /revision_pasajeros/1.json
  def update
    respond_to do |format|
      if @revision_pasajero.update(revision_pasajero_params)
        format.html { redirect_to @revision_pasajero, notice: 'Revision pasajero was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @revision_pasajero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revision_pasajeros/1
  # DELETE /revision_pasajeros/1.json
  def destroy
    @revision_pasajero.destroy
    respond_to do |format|
      format.html { redirect_to revision_pasajeros_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revision_pasajero
      @revision_pasajero = RevisionPasajero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def revision_pasajero_params
      params.require(:revision_pasajero).permit(:revision_id, :pasajero_id)
    end
end
