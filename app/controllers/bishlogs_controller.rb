class BishlogsController < ApplicationController
  def index
    @bishlogs = Bishlog.all
  end
  def new
    @bishlog = Bishlog.new
  end
  def create
    Bishlog.create(bishlog_params)
    redirect_to new_bishlog_path
  end
  def show
    @bishlog = Bishlog.find(params[:id])
  end
  private
  def bishlog_params
    params.require(:bishlog).permit(:user, :content)
  end
end
