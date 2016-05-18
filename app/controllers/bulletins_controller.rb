class BulletinsController < ApplicationController

  before_action :find_bulletin, :only => [ :show, :edit, :update, :destroy ]

  def index
    @bulletins = Bulletin.before_today.order(post_time: :desc).first(5)
  end

  def new
    @bulletin = Bulletin.new
  end

  def create
    @bulletin = Bulletin.new(bulletin_params)
    @bulletin.user_id = current_user.id
    if @bulletin.save
      redirect_to admin_index_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @bulletin.user_id = current_user.id
    @bulletin.update(bulletin_params)
    redirect_to admin_index_path
  end

  def destroy
    @bulletin.destroy
    redirect_to admin_index_path
  end

  private
  def bulletin_params
    params.require(:bulletin).permit(:content, :post_time, :bulletin_type)
  end

  def find_bulletin
    @bulletin = Bulletin.find(params[:id])
  end
end
