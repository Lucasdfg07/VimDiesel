require_relative './../spec_helper.rb'
require './app/services/insert_service'

describe DeleteService do
    describe '#call' do
        before do
            product = Product.create(name: "teste")
            @deleteService = DeleteService.new(product.id)
        end

        context 'Valid ID' do
            it 'Return a success message' do
                response = @deleteService.call()
                expect(response).to match("Deletado com sucesso!")
            end
        end

        context 'Invalid ID' do
            it 'Return error message' do
                response = DeleteService.new({}).call()
                expect(response).to match("Questão inválida, verifique o Id")
            end
        end
    end
end