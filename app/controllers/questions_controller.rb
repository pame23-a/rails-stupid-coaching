class QuestionsController < ApplicationController
  def ask
  end

  def answer # llamamos al metodo
    @answer = stupid_coaching(params[:message])
    end

  private

# definiendo el metodo

  def stupid_coaching(message)
    if message == 'I am going to work'
      'Great!'
    elsif message.end_with?('?')
      'Silly question, get dressed and go to work!.'
    else
      'I dont care, get dressed and go to work!'
    end
  end
end
