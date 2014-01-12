class EmtServicesController < ApplicationController
  before_action :set_emt_service, only: [:show, :edit, :update, :destroy]

  # GET /emt_services
  # GET /emt_services.json
  def index
    @emt_services = EmtService.all
  end

  # GET /emt_services/1
  # GET /emt_services/1.json
  def show
  end

  # GET /emt_services/new
  def new
    @emt_service = EmtService.new
  end

  # GET /emt_services/1/edit
  def edit
  end

  # POST /emt_services
  # POST /emt_services.json
  def create
    @emt_service = EmtService.new(emt_service_params)

    respond_to do |format|
      if @emt_service.save
        format.html { redirect_to @emt_service, notice: 'Emt service was successfully created.' }
        format.json { render action: 'show', status: :created, location: @emt_service }
      else
        format.html { render action: 'new' }
        format.json { render json: @emt_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emt_services/1
  # PATCH/PUT /emt_services/1.json
  def update
    respond_to do |format|
      if @emt_service.update(emt_service_params)
        format.html { redirect_to @emt_service, notice: 'Emt service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @emt_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emt_services/1
  # DELETE /emt_services/1.json
  def destroy
    @emt_service.destroy
    respond_to do |format|
      format.html { redirect_to emt_services_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emt_service
      @emt_service = EmtService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emt_service_params
      params.require(:emt_service).permit(:name, :address, :phone, :imgageUrl)
    end
end
