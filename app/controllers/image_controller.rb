class ImageController < ApplicationController

  def index
    @images = Image.all
    erb :index
  end

  def show
    @image = Image.find(params[:id])
    erb :show
  end

  def new
    erb :new
  end

  def create
    @image = Image.new
    if @image.save
      erb :show
    else
      redirect :new
    end
  end

  def edit
    erb :edit
  end

  def update
    @image = Image.find(params[:id])
    if image.update
      erb :show
    else
      redirect :edit
    end
  end

  def delete
    @image = Image.find(params[:id])
    @image.destroy
    redirect :index
  end

end
