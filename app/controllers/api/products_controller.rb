class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    search_term = params[:search]
    if search_term
      @products = @products.where("name iLIKE ?", "%#{search_term}%")
    end

    discount = params[:discount]
    if discount == "true"
      @products = @products.where("price < ?", 60)
    end
    
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]

    if sort_attribute == "price"
      @products = @products.order(:price)
    end


    render 'index.json.jbuilder'
  end

  def create
    @product = Product.new(
                          name: params[:name],
                          price: params[:price],
                          description: params[:description],
                          in_stock: params[:in_stock],
                          supplier_id: params[:supplier_id]
                          )
    if @product.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.in_stock = params[:in_stock] || @product.in_stock


    if @product.save
      render 'show.json.jbuilder'
    else
      render json: { message: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "Successfully destroyed product #{@product.name} with id #{@product.id}"} 
  end
end
