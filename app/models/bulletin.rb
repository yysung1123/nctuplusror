class Bulletin < ActiveRecord::Base
  scope :before_today, -> { where(['post_time <= ?', DateTime.now]) }
  validates_presence_of :content
end
