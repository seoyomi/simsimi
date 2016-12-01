class ConversationsController < ApplicationController
  def index
  	@histories = History.all
  end

  def receive
  	if History.where(question: params[:question]).empty?
  		session[:question] = params[:question]
  		redirect_to action: 'teach'
  	else 
  		History.create(question: params[:question], answer: History.where(question: params[:question]).sample.answer)
  		redirect_to :root
  	end
  end

  def teach
  	@question = session[:question]
  end

  def save
  	History.create(question: params[:new_question], answer: params[:new_answer])
  	redirect_to :root
  end
end
