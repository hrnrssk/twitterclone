class BishlogsController < ApplicationController
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
    @bishlog = Bishlog.find(params[:id])
  end
  def edit
    @bishlog = Bishlog.find(params[:id])
  end
  def update
    @bishlog = Bishlog.find(params[:id])
    if @bishlog.update(bishlog_params)
      redirect_to bishlogs_path, notice: "ツイートを編集しました！"
    else
      render :edit
    end
  end
  private
  def bishlog_params
    params.require(:bishlog).permit(:user, :content)
  end
end
