class MessagesController < ApplicationController
  def create
    @message = Message.create(text: params[:text])
  end
end
