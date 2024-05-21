class ChatController < ApplicationController
  def show
    @messages = Message.by_recent.limit(100).reverse
  end
end
