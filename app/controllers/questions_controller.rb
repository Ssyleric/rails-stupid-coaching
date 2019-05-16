class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input = params[:askquestion]
    if @user_input.chars.include?('w')
      @answer = 'Great'
    elsif @user_input.chars.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
