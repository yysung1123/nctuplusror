class BulletinsController < ApplicationController

  before_action :find_bulletin, :only => [ :show, :edit, :update ]

  def index
    @bulletins = Bulletin.all
  end

  def new
    @bulletin = Bulletin.new
  end

  def create
    @bulletin = Bulletin.new(bulletin_params)
    if @bulletin.save
      redirect_to bulletins_path
    else
      render :new
    end
  end

  def show
  end

  def update
    @bulletin.update(bulletin_params)
    redirect_to bulletins_path
  end

  private
  def bulletin_params
    params.require(:bulletin).permit(:content)
  end

  def find_bulletin
    @bulletin = Bulletin.find(params[:id])
  end
end
