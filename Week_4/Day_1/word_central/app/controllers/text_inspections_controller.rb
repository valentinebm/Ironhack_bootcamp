class TextInspectionsController < ApplicationController

  def new
  end

  def create
    @text = params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length
    @estimated_time = @word_count/275
    @words = @text.split(" ")
    @frequency = Hash.new(0)
    @words.each { |word| @frequency[word.downcase] += 1}
    @selection = @frequency.sort_by{|key, value| -value}.first 10
    render "results"
  end
end
