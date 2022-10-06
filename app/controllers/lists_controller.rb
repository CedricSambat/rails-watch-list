class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def create
    @list = List.new(params[:bookmark])
    @list = List.save
  end
end

private

def list_params
  params.require(:list).permit(:name)
end
