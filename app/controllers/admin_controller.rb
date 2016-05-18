class AdminController < ApplicationController
  before_filter :check_admin

  def index
    @bulletins = Bulletin.order(post_time: :desc)
    @news = Bulletin.where(bulletin_type: false).order(post_time: :desc)
    @updates = Bulletin.where(bulletin_type: true).order(post_time: :desc)
  end
end
