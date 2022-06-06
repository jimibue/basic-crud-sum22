class Api::ItemsController < ApplicationController
    def index
        render json: Item.all
    end

    def show
        puts "params yo"
        puts params
        item = Item.find(params[:id])
        render json:item
    end
end
