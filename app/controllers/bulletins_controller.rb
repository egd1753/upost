class BulletinsController < ApplicationController

  def show
  end


  def new
    @board = Board.find(params[:board_id])
    @bulletin = Bulletin.new
  end


  def create
    @bulletin = Bulletin.new
    @bulletin.title = params[:bulletin][:title]
    @bulletin.body = params[:bulletin][:body]
    @board = Board.find(params[:board_id])
    @bulletin.board = @board

    if @bulletin.save
      flash[:notice] = "Bulletin was saved."
      redirect_to [@board]
    else
      flash.now[:alert] = "There was an error saving. Please try again."
      render :new
    end
  end


  def edit
  end


end
