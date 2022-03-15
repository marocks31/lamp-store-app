class ItemsController < ApplicationController

def index
  items = Item.all
  render json: items.as_json
end

def create
  item = Item.new(
    name: params[:name],
    price: params[:price],
    description: params[:description],
    voltage: params[:voltage]
  )
  item.save
  render json: item.as_json

end

def show
  item = Item.find_by(id: params[:id]
  )
  render json: item.as_json
end

def update
  item = Item.find_by(id: params[:id])
  item.name = params[:name] || item.name
  item.price = params[:price] || item.price
  item.description = params[:description] || item.description
  item.voltage = params[:voltage] || item.voltage
  item.save
  render json: item.as_json
end

def destroy
  item = Item.find_by(id: params[:id])
  item.destroy
  render json: {message: "This item is no longer available."}

end 


end
