class ProductsController < InheritedResources::Base
  filter_resource_access
  
  private

    def product_params
      params.require(:product).permit(:title, :description, :price)
    end
end

