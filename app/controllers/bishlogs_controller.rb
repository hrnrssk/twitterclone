class BishlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  def index
    @bishlogs = Bishlog.all
  end
  def new
    @bishlog = Bishlog.new
  end
  def create
    @bishlog = Bishlog.new(bishlog_params)
    if @bishlog.save
      redirect_to bishlogs_path, notice: "ツイートしました！"
    else
      render :new
    end
  end
  def show
  end
  def edit
  end
  def update
    if @bishlog.update(bishlog_params)
      redirect_to bishlogs_path, notice: "ツイートを編集しました！"
    else
      render :edit
    end
  end
  def destroy
    @bishlog.destroy
    redirect_to bishlogs_path, notice:"ツイートを削除しました！"
  end
  private
  def bishlog_params
    params.require(:bishlog).permit(:user, :content)
  end
  def set_blog
    @bishlog = Bishlog.find(params[:id])
  end
end
