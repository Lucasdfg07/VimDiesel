require_relative './../spec_helper.rb'
require './app/services/insert_service'

describe ListService do
    describe '#call' do
        context "list commands" do
            context 'None products in database' do
                it 'Return dont find message' do
                    response = ListService.new("wrong_name").call
                    expect(response).to match("Nada encontrado")
                end
            end

            context 'One or more products in database' do
                context 'Enter a correct value' do
                    it 'Return the product find on search' do
                        @product = Product.create(name: "teste")

                        response = ListService.new(@product.name).call
                        expect(response).to match(Product.find_by(name: @product.name))
                    end
                end

                context 'Enter a nil value' do
                    it 'Return all the products' do
                        response = ListService.new({}).call
                        expect(response).to match(Product.all)
                    end
                end
            end
        end
    end
end