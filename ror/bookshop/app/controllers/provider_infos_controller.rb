class ProviderInfosController < ApplicationController
  before_action :set_provider_info, only: [:show, :edit, :update, :destroy]

  # GET /provider_infos
  # GET /provider_infos.json
  def index
    @provider_infos = ProviderInfo.all
  end

  # GET /provider_infos/1
  # GET /provider_infos/1.json
  def show
  end

  # GET /provider_infos/new
  def new
    @provider_info = ProviderInfo.new
  end

  # GET /provider_infos/1/edit
  def edit
  end

  # POST /provider_infos
  # POST /provider_infos.json
  def create
    @provider_info = ProviderInfo.new(provider_info_params)

    respond_to do |format|
      if @provider_info.save
        format.html { redirect_to @provider_info, notice: 'Provider info was successfully created.' }
        format.json { render :show, status: :created, location: @provider_info }
      else
        format.html { render :new }
        format.json { render json: @provider_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /provider_infos/1
  # PATCH/PUT /provider_infos/1.json
  def update
    respond_to do |format|
      if @provider_info.update(provider_info_params)
        format.html { redirect_to @provider_info, notice: 'Provider info was successfully updated.' }
        format.json { render :show, status: :ok, location: @provider_info }
      else
        format.html { render :edit }
        format.json { render json: @provider_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provider_infos/1
  # DELETE /provider_infos/1.json
  def destroy
    @provider_info.destroy
    respond_to do |format|
      format.html { redirect_to provider_infos_url, notice: 'Provider info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider_info
      @provider_info = ProviderInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provider_info_params
      params.require(:provider_info).permit(:pname, :conPerson, :conPost, :conPhoneNum, :Address, :Email)
    end
end
