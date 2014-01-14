class SneakerController < ApplicationController
  

  def index
    @sneakers = Sneaker.where(id: session[:sneaker_ids])
  end

  def create

    @brand_name = params[:brand_name]
    @base_size = params[:base_size].to_f
    session[:sneaker_ids] = []
    @brands = Brand.all
      case @brand_name
        when "Puma"
          @base_size = @base_size - 0.5
        when "Converse"
          @base_size = @base_size + 0.5
        when "New Balance"
          @base_size = @base_size + 0.5
        when "Asics"
          @base_size = @base_size - 0.5
        when "Saucony"
          @base_size = @base_size + 0.5
      end

    @brands.each do |brand|
      session[:sneaker_ids] << Sneaker.create(base_size: @base_size, brand_name: brand.name, brand_id: brand.id, shoe_size: @base_size + brand.conversion).id
    end

    redirect_to sneaker_index_path
  end

  def new
  end


end