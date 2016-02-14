class ImagesController < ApplicationController

  def index
    @images = Image.all

    render 'index'
  end

  def new
    render 'new'
  end

  def show
    @image = Image.find(params[:id])

    render 'show'
  end

  def edit
    render 'edit'
  end

  def create
    @image = Image.new(params)

    if @image.save
      redirect 'show'
    else
      render 'new'
    end
  end

  def update
    @image = Image.find(params[:id])

    if @image.update(params)
      redirect 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @image = Image.find(params[:id])

    @image.destroy
  end


end
