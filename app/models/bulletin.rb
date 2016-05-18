class Bulletin < ActiveRecord::Base
  belongs_to :user
  scope :before_today, -> { where(['post_time <= ?', DateTime.now]) }
  validates_presence_of :content
end
