class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    @message.save

    redirect_to messages_path
  end

  def index
    @messages = Message.all
  end
end
