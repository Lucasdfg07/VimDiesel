class ListService
    def initialize(product)
        @query = product
    end
  
    def call
        if @query.present?
            product = Product.find_by(name: @query)

            if product.present?
                return product
            else
                "Nada encontrado"
            end
        else
            product_all = Product.all
        end
    end
end