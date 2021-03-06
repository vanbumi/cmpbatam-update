class PropertiesController < ApplicationController

  layout "admin_layout"

  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json
  def index
    @q = Property.ransack(params[:q])

    if user_signed_in?
      @properties = @q.result.order("created_at DESC").page(params[:page]).per_page(20)
    else
      @properties = @q.result.where("active = '1' ").order("created_at DESC").page(params[:page]).per_page(20)
    end


    @jumlah_prop = Property.where("active = '1'").count

    # @properties = Property.search(params[:search]).order("created_at DESC").page(params[:page]).per_page(5)
    
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
  end


  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:name, :slug, :location, :status, :property_type, :bedroom, :bathroom, :price, :area, :luas_bangunan, :luas_tanah, :main_fasility, :main_description, :image_url, :image_url2, :image_url3, :image_url4, :image_url5, :image_url6, :image_url7, :image_url8, :image_url9, :image_url10, :image_url11, :image_url12, :image_description, :image_description2, :image_description3, :image_description4, :image_description5, :image_description6, :image_description7, :image_description8, :image_description9, :image_description10, :image_description11, :image_description12, :active, images: [])
    end
end
