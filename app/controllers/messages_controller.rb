class MessagesController < ApplicationController
  def new
    Message.new
  end
end
