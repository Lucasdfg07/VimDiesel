class InsertService
    def initialize(product)
        @product = product
    end
  
    def call
        if @product.present?
            Product.create(name: @product)
        else
            return 'Nome do produto inválido!'
        end
    end
end