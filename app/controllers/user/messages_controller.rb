class User::MessagesController < User::UserBaseController
  def create
    message = Message.create(message_params)
    message.user = current_user

    return unless message.save

    ActionCable.server.broadcast "messages_#{message.chatroom.id}",
                                 message: message.content,
                                 user: message.user.username
    head :ok
  end

  private

  def message_params
    params.require(:message).permit(:content, :chatroom_id)
  end
end