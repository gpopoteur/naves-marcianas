class RevisionsController < ApplicationController
  before_action :set_revision, only: [:show, :edit, :update, :destroy]

  # GET /revisions
  # GET /revisions.json
  def index
    @revisions = Revision.all
  end

  # GET /revisions/1
  # GET /revisions/1.json
  def show
  end

  # GET /revisions/new
  def new
    @revision = Revision.new
  end

  # POST /revisions
  # POST /revisions.json
  def create
    @revision = Revision.new(revision_params)

    revision_pasada = Revision.where(:aeronave_id => @revision.aeronave.id).last

    if revision_pasada != nil && revision_pasada.created_at.to_date == Date.today
      flash[:error] = 'Ya existe una revision para esa nave el dia de hoy.'
      return redirect_to revisions_path
    end

    aeronave = @revision.aeronave

    # Do all the bulk insert inside of an ActiveRecord transaction so 
    # the the database performs all of the inserts in a single transaction
    ActiveRecord::Base.transaction do
      aeronave.pasajeros.each do |pasajero|
        rev_pasajero = RevisionPasajero.new
        rev_pasajero.revision = @revision
        rev_pasajero.pasajero = pasajero

        rev_pasajero.save
      end

      respond_to do |format|
        if @revision.save
          format.html { redirect_to @revision, notice: 'Revision was successfully created.' }
          format.json { render action: 'show', status: :created, location: @revision }
        else
          format.html { render action: 'new' }
          format.json { render json: @revision.errors, status: :unprocessable_entity }
        end
      end

    end # DB Transaction end

  end # method end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revision
      @revision = Revision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def revision_params
      params.require(:revision).permit(:revisior, :aeronave_id)
    end
end
