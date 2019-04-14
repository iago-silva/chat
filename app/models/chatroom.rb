# frozen_string_literal: true

class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :users, through: :messages

  validates :topic, presence: true
end
