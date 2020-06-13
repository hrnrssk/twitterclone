class BishlogsController < ApplicationController
  before_action :set_bishlog, only: [:show, :edit, :update, :destroy]
  def index
    @bishlogs = Bishlog.all
  end
  def new
    @bishlog = Bishlog.new
  end
  def create
    @bishlog = Bishlog.new(bishlog_params)
    if params[:back]
      render :new
    else
      if @bishlog.save
        redirect_to bishlogs_path, notice: "ツイートを作成しました！"
      else
        render :new
      end
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
  def confirm
    @bishlog = Bishlog.new(bishlog_params)
    render :new if @bishlog.invalid?
  end
  private
  def bishlog_params
    params.require(:bishlog).permit(:user, :content)
  end
  def set_bishlog
    @bishlog = Bishlog.find(params[:id])
  end
end
