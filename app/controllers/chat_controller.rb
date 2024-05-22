class ChatController < ApplicationController
  def show
    @messages = Message.by_recent.limit(20).reverse
  end
end
