class Api::IceCreamsController < ApplicationController
  def index
    @ice_creams = IceCream.all
    render 'index.json.jb'
  end

  def show
    @ice_cream = IceCream.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @ice_cream = IceCream.new(
      name: params[:name],
      flavor: params[:flavor],
      color: params[:color]
    )
    @ice_cream.save
    render 'show.json.jb'
  end

  def update
    @ice_cream = IceCream.find_by(id: params[:id])
    @ice_cream.name = params[:name]
    @ice_cream.flavor = params[:flavor]
    @ice_cream.color = params[:color]
    @ice_cream.save
    render 'show.json.jb'
  end
end
