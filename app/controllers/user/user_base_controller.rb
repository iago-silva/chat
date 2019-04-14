class User::UserBaseController < ApplicationController
  before_action :authenticate_user!
end