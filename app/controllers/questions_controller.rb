class QuestionsController < ApplicationController
  def ask
    # código para exibir o formulário de perguntas
  end

  def answer
    @question = params[:question]
    @answer = ""


    @answer = if @question == "I am going to work"
                  "great"
              elsif @question.end_with?("?")
                 "Silly question, get dressed and go to work!"

              else
                "I don't care, get dressed and go to work!"
              end
  end
end
