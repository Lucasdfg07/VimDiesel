require_relative './../spec_helper.rb'
require './app/services/insert_service'

describe ListService do
    describe '#call' do
        context "list commands" do
            context 'None products in database' do
                it 'Return dont find message' do
                    response = ListService.new({}).call
                    expect(response).to match(Product.all)
                end
            end

            context 'One or more products in database' do
                it 'Return the list' do
                    @product = Product.create(name: "teste")

                    response = ListService.new({"query" => @product.name}).call
                    expect(response).to match(@product.name)
                end
            end
        end
    end
end