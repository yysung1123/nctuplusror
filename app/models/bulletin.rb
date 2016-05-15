class Bulletin < ActiveRecord::Base
  scope :before_today, -> { where(['post_time <= ?', Date.today]) }
  validates_presence_of :content
end
