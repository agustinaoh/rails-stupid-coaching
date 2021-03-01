class QuestionsController < ApplicationController
  def home; end

  def ask; end

  def answer
    # @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    @question = params[:question].downcase

    @answer = if @question == 'i am going to work' || @question == "i'm going to work"
                'Great'
              elsif params[:question].include?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
