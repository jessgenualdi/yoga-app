class Api::V1::AnatomiesController < ApplicationController
  def index
    @anatomies = Anatomy.all
    render 'index.json.jbuilder'
  end
end
