class SneakerController < ApplicationController
  

  def index
    @sneakers = Sneaker.where(id: session[:sneaker_ids])
    @sneaker_ad1 = Amazoninfo.all.shuffle.pop.asin
    @sneaker_ad2 = Amazoninfo.all.shuffle.pop.asin
    @sneaker_ad3 = Amazoninfo.all.shuffle.pop.asin
    @sneaker_ad4 = Amazoninfo.all.shuffle.pop.asin
  end

  def create
    @brand_name = params[:brand_name]
    @base_size = params[:base_size].to_f
    size = @base_size.to_s.split(".").last.to_i

    if (size == 5 || size == 0) && @base_size < 18
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

    else
       render text: "You Entered an Invalid Size. Please Go Back and Try Again."
    end
  end

  def new
    @all_shoes = Amazoninfo.all.shuffle
    @best_seller1 = @all_shoes.pop
    @best_seller2 = @all_shoes.pop
    @best_seller3 = @all_shoes.pop
    @best_seller4 = @all_shoes.pop
    @best_seller5 = @all_shoes.pop
    @best_seller6 = @all_shoes.pop
    @best_seller7 = @all_shoes.pop
    @best_seller8 = @all_shoes.pop
    @best_seller9 = @all_shoes.pop
    @best_seller10 = @all_shoes.pop
  end

  def show
    @id = params[:id]
    @brand = Brand.find(@id)
    @amazon_info = Amazoninfo.where(brand_id: @id).to_a
  end


end