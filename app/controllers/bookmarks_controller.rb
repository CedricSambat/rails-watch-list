class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end






end

private

def bookmark_params
  params.require(:bookmark).permit(:comment, :movie_id)
end
