class Api::IceCreamsController < ApplicationController
  def index
    @ice_creams = IceCream.all
    render 'index.json.jb'
  end

  def show
    @ice_cream = IceCream.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
