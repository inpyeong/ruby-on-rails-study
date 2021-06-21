# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :string(255)
#  body       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
class Post < ApplicationRecord
  #validation
  validates :title, presence: true
  validates :title, length: { minimum: 10 }
  validates :body, presence: true

  # relations
  belongs_to :user

  # callbacks
  after_create :send_notification

  private

  def send_notification
    NotificationMailer.create_post(user, self)
  end
end
