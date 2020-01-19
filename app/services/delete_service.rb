class DeleteService
    def initialize(id)
        @id = id
    end
  
    def call
        if @id.present?
            product = Product.find(@id).destroy
            
            "Deletado com sucesso!"
        else
            return "Questão inválida, verifique o Id"
        end
    end
end