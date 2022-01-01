class GlassesController < ApplicationController
  before_action :set_glass, only: [:show, :edit, :update, :destroy]
  
  def index
    @glasses = Glass.all

    case params[:s]
    when "all" then @glasses
    when "sun" then @glasses = @glasses.sun
    when "sight" then @glasses = @glasses.sight
    when "women" then @glasses.women
    when "men" then @glasses.men
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'list.html' }
    end
  end

  def show; end

  # permit only if admin
  def new
    @glass = Glass.new
  end

  # permit only if admin
  def create
    @glass = Glass.new(glass_params)
    if @glass.save!
      redirect_to admin_dash_path
    else
      render :new
    end
  end

  # permit only if admin
  def edit; end

  # permit only if admin
  def update
    @glass.update!(glass_params)
    redirect_to glass_path(@glass)
  end

  # permit only if admin
  def destroy
    @glass.destroy
    redirect_to admin_dash_path
  end

  private

  def set_glass
    @glass = Glass.find(params[:id])
  end

  def glass_params
    params.require(:glass).permit(:sku, :name, :brand, :color, :price, :frame, :material, :measure, :sunglasses, :woman)
  end
end