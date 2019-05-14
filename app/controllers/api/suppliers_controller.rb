class Api::SuppliersController < ApplicationController
  
  def index
    @suppliers = Supplier.all

    render 'index.json.jbuilder'
  end

  def create
    @supplier = Supplier.new(
                            name: params[:name],
                            email: params[:email],
                            phone_number: params[:phone_number]
                            )
    if @supplier.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @supplier.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @supplier = Supplier.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    
  end

  def destroy
    
  end
end

end
