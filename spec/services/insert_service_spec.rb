require_relative './../spec_helper.rb'
require './app/services/insert_service'

describe InsertService do
    before do
        @product = FFaker::Lorem.sentence
    end

    describe '#call' do
        context 'Input is blank' do
            it 'Will receive an error' do
                @insertService = InsertService.new({})
                @response = @insertService.call()
                expect(@response).to match("Nome do produto inválido!")
            end
        end

        context 'With valid params' do
            it 'Return success message' do
                InsertService.new(@product).call

                expect(Product.count).to eq(1)
            end
        end
    end
end