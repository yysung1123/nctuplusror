class AdminController < ApplicationController
  before_filter :check_admin

  def index
    bulletins = Bulletin.includes(:user)
    @all = bulletins.order(post_time: :desc)
    @news = bulletins.where(bulletin_type: false).order(post_time: :desc).includes(:user)
    @updates = bulletins.where(bulletin_type: true).order(post_time: :desc).includes(:user)
  end
end
