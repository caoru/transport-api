class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  def index
    @items = Item.all
    data = { "items" => @items }
    json_response(data)
  end

  # POST /items
  def create
    @item = Item.create!(item_params)
    data = { "item" => @item }
    json_response(data, :created)
  end

  # GET /items/:id
  def show
    data = { "item" => @item }
    json_response(data)
  end

  # PUT /items/:id
  def update
    @item.update(item_params)
    head :no_content
  end

  # DELETE /items/:id
  def destroy
    @item.destroy
    head :no_content
  end

  private

  def item_params
    params.permit(
      :name
    )
  end

  def set_items
    @item = Item.find(params[:id])
  end
end
