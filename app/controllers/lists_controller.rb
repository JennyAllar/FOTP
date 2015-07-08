class ListsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
  end

  def create
    List.create(list_params)
    redirect_to List
  end

  private

  def list_params
    params.require(:list).permit(:piece_1, :piece_2, :cycle_length)
  end
end
