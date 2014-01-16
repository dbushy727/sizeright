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
    @sneaker_ad1 = Amazoninfo.all.shuffle.pop.asin
    @sneaker_ad2 = Amazoninfo.all.shuffle.pop.asin
    @sneaker_ad3 = Amazoninfo.all.shuffle.pop.asin
    @sneaker_ad4 = Amazoninfo.all.shuffle.pop.asin
    @sneaker_ad5 = Amazoninfo.all.shuffle.pop.asin
    @sneaker_ad6 = Amazoninfo.all.shuffle.pop.asin
  end

  def show
    @id = params[:id]
    @brand = Brand.find(@id)
    @amazon_info = Amazoninfo.where(brand_id: @id).to_a

  end


end