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
      redirect_to bishlogs_path, notice: "投稿しました！"
    else
      render :new
    end
  end
  def show
    @bishlog = Bishlog.find(params[:id])
  end
  private
  def bishlog_params
    params.require(:bishlog).permit(:user, :content)
  end
end
