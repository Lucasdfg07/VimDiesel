class InsertService
    def initialize(params)
        @product = params["name"]
    end

    def call
        return 'Nome do produto inválido!' if @product == nil

        # Product.transaction do
            product = Product.create(name: @product)
        # end
        
        "Produto inserido, com sucesso!"
    end
end