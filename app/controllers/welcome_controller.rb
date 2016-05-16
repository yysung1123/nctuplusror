class WelcomeController < ApplicationController
  def index
    @bulletins = Bulletin.before_today.order(post_time: :desc).first(5)
  end
end
