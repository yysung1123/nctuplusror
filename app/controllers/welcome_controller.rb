class WelcomeController < ApplicationController
  def index
    @news = Bulletin.where(bulletin_type: false).before_today.order(post_time: :desc)
    @updates = Bulletin.where(bulletin_type: true).before_today.order(post_time: :desc)
  end
end
