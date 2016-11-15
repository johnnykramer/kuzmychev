class TagsController < ApplicationController
  def show
    @tag = Tag.find_by(name: params[:id])
    @notes = @tag.notes
  end
end
