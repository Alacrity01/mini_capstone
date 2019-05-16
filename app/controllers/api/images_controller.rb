class Api::ImagesController < ApplicationController
  before_action :authenticate_admin

  def create
    @image = Image.new(
                        product_id: @product.id,
                        url: params[:image_url]
                        )
    if @image.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    end@image.save

    render "show.json.jbuilder"
  end

  def show
    @image = Image.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    
  end

  def destroy
    
  end
end
end
