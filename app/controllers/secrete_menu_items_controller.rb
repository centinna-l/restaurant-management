class SecreteMenuItemsController < ApplicationController
    def index
        @secreteMenuItems = SecreteMenuItem.all
        render json: {data: @secreteMenuItems}
    end

    def show
        @secreteMenuItem = SecreteMenuItem.find(params[:id])
        render json: {data: @secreteMenuItems}
    end

    def create
        @secreteMenuItem = SecreteMenuItem.create(
            menu_name: params[:menu_name],
            restaurant_name: params[:restuarant_name],
            menu_description: params[:menu_description],
        )
        render json: {messgae: "New Menu created with the name #{params[:menu_name]}",data: @secreteMenuItem}
    end
    def update
        @secreteMenuItem = SecreteMenuItem.find(params[:id])
        p params[:restaurant_name]
        @secreteMenuItem.update(
            menu_name: params[:menu_name],
            restaurant_name: params[:restuarant_name],
            menu_description: params[:menu_description],
        )
        render json: {message: "Updated Successfully",data: @secreteMenuItem}
    end
    def destroy
        @secreteMenuItem = SecreteMenuItem.all
        @secreteMenuItem = SecreteMenuItem.find(params[:id])
        @secreteMenuItem.destroy
        
        render json: {data: @secreteMenuItem}
    end
end
