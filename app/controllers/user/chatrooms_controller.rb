class User::ChatroomsController < User::UserBaseController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end