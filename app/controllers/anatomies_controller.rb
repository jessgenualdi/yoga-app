class AnatomiesController < ApplicationController
  def index 
    @anatomies = Anatomy.all 
    render 'index.html.erb'
  end
end
