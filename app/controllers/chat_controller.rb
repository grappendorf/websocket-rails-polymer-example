class ChatController < WebsocketRails::BaseController

  def join
    WebsocketRails[:chat].trigger 'joined', { user: message[:user] }
    publishMessage 'system', "User #{message[:user]} has joined the chat"
  end

  def publish
    publishMessage message[:user], message[:text]
  end

  private
  def publishMessage user, text
    WebsocketRails[:chat].trigger 'message', { user: user, text: text }
  end
end
