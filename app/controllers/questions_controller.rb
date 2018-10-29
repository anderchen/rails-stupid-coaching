class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question[-1] == '?'
      @reply_question = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @reply_great = 'Great!'
    else
      @reply_rest = "I don't care, get dressed and go to work!"
    end
  end
end
