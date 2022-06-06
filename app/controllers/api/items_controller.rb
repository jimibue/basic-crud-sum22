class Api::ItemsController < ApplicationController
    before_action :set_item, only: [:show, :update, :destroy]
    
    def index
        render json: Item.all
    end

    def show
        # puts "show params:"
        # puts params
        # item = Item.find(params[:id])
        render json: @item
    end

    def create
        puts "create params:"
        puts params
        item = Item.new(item_params)
        if(item.save)
            render json: item
        else
            # 422 in unprocessably entity
            # if they don't give my a name or if price isn't a number
            render json: {errors: item.errors.full_messages}, status: 422
        end
    end

    def update
        # item = Item.find(params[:id])
        if @item.update(item_params)
            render json: @item
        else
            # 422 in unprocessably entity
            # if they don't give my a name or if price isn't a number
            render json: {errors: @item.errors.full_messages}, status: 422
        end
    end



    def destroy
        # item = Item.find(params[:id])
        render json: @item.destroy
    end

    private

    def set_item
       @item = Item.find(params[:id])
    end

    def item_params
        return params.require(:item).permit(:name, :price)
    end
end
