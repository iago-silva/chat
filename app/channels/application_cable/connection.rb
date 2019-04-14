module ApplicationCable
  class Connection < ActionCable::Connection::Base
    # HERE YOU CAN AUTHORIZE NEW CONNECTION,
    # BUT IN THIS PROJECT WE'LL ALLOW ANY USER CONNECT TO ANY CHAT ROOM
  end
end
