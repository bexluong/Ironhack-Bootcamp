class TextInspectionsController < ApplicationController
  def new
  end

  def create
    @text = params[:text_inspection][:user_text].inspect
    @words = @text.split(" ")
    @word_count = @text.split(" ").length
    render "results"
  end
end
