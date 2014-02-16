class NaveNodrizasController < ApplicationController
  before_action :set_nave_nodriza, only: [:show, :edit, :update, :destroy]

  # GET /nave_nodrizas
  # GET /nave_nodrizas.json
  def index
    @nave_nodrizas = NaveNodriza.all
  end

  # GET /nave_nodrizas/1
  # GET /nave_nodrizas/1.json
  def show
  end

  # GET /nave_nodrizas/new
  def new
    @nave_nodriza = NaveNodriza.new
  end

  # GET /nave_nodrizas/1/edit
  def edit
  end

  # POST /nave_nodrizas
  # POST /nave_nodrizas.json
  def create
    @nave_nodriza = NaveNodriza.new(nave_nodriza_params)

    respond_to do |format|
      if @nave_nodriza.save
        format.html { redirect_to nave_nodrizas_path, notice: 'Nave nodriza was successfully created.' }
        format.json { render action: 'show', status: :created, location: @nave_nodriza }
      else
        format.html { render action: 'new' }
        format.json { render json: @nave_nodriza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nave_nodrizas/1
  # PATCH/PUT /nave_nodrizas/1.json
  def update
    respond_to do |format|
      if @nave_nodriza.update(nave_nodriza_params)
        format.html { redirect_to nave_nodrizas_path, notice: 'Nave nodriza was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nave_nodriza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nave_nodrizas/1
  # DELETE /nave_nodrizas/1.json
  def destroy
    @nave_nodriza.destroy
    respond_to do |format|
      format.html { redirect_to nave_nodrizas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nave_nodriza
      @nave_nodriza = NaveNodriza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nave_nodriza_params
      params.require(:nave_nodriza).permit(:nombre)
    end
end
