class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
  end

  def new
    @board = Board.new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
