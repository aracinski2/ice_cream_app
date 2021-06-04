class Api::IceCreamsController < ApplicationController
  def index
    @ice_creams = IceCream.all
    render 'index.json.jb'
  end

end
