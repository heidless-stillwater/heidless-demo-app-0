class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 2}
  validates :content, presence: true, length: {in: 5..100}
  validates :views, numericality: {only_integer: true}

  belongs_to :user
  has_many :comments, dependent: :destroy

  has_noticed_notifications model_name: "Notifications"
  has_many :notifications, through: :user, dependent: :destroy

end

