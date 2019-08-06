class BulletinsController < ApplicationController
  def index
    @bulletins = Bulletin.all
  end


  def show
  end


  def new
    @bulletin = Bulletin.new
  end


  def create
    @bulletin = Bulletin.new
    @bulletin.title = params[:bulletin][:title]
    @bulletin.body = params[:bulletin][:body]

    if @bulletin.save
      flash[:notice] = "Bulletin was saved."
      redirect_to :root
    else
      flash.now[:alert] = "There was an error saving. Please try again."
      render :new
    end
  end


  def edit
  end


end
