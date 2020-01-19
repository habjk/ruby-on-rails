class ShopAdminsController < ApplicationController
  before_action :set_shop_admin, only: [:show, :edit, :update, :destroy]

  # GET /shop_admins
  # GET /shop_admins.json
  def index
    @shop_admins = ShopAdmin.all
  end

  # GET /shop_admins/1
  # GET /shop_admins/1.json
  def show
  end

  # GET /shop_admins/new
  def new
    @shop_admin = ShopAdmin.new
  end

  # GET /shop_admins/1/edit
  def edit
  end

  # POST /shop_admins
  # POST /shop_admins.json
  def create
    @shop_admin = ShopAdmin.new(shop_admin_params)

    respond_to do |format|
      if @shop_admin.save
        format.html { redirect_to @shop_admin, notice: 'Shop admin was successfully created.' }
        format.json { render :show, status: :created, location: @shop_admin }
      else
        format.html { render :new }
        format.json { render json: @shop_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_admins/1
  # PATCH/PUT /shop_admins/1.json
  def update
    respond_to do |format|
      if @shop_admin.update(shop_admin_params)
        format.html { redirect_to @shop_admin, notice: 'Shop admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_admin }
      else
        format.html { render :edit }
        format.json { render json: @shop_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_admins/1
  # DELETE /shop_admins/1.json
  def destroy
    @shop_admin.destroy
    respond_to do |format|
      format.html { redirect_to shop_admins_url, notice: 'Shop admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_admin
      @shop_admin = ShopAdmin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_admin_params
      params.require(:shop_admin).permit(:fname, :lname, :email, :password, :owns_id)
    end
end
