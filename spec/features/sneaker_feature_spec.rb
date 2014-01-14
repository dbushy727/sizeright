require 'spec_helper'

describe "sneaker feature" do
  describe "Given a user and his base_size" do
      before do
        @brand_name = "Nike"
        @base_size = 9.5
        user = User.new(base_size: @base_size, brand_name: @brand_name)
      end
        
    describe "When on the home page, fill in the form" do
      before do
          visit root_path
          fill_in :base_size, with: @base_size
          fill_in :brand_name, with: @brand_name
          click_button :submit
      end

        it "takes me to the sneakers page and shows other companies with respective sizes" do
          current_path == sneaker_path
          page.should have_content("Asics")
          page.should have_content(10)
        end

      
    end
  end
end
