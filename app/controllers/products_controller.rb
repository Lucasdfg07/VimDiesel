class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def search
        value = ListService.new(params[:name]).call
        render json: value
    end

    def create
        value = InsertService.new(params[:name]).call
        redirect_to products_index_path, notice: 'Produto criado com sucesso!'
    end
    
    def remove
        value = DeleteService.new(params[:id]).call
        redirect_to products_index_path, alert: 'Produto deletado com sucesso!'
    end
end
