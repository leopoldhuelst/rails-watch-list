class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    id = params[:id]
    @list = List.find(id)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(strong_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    id = params[:id]
    @list = List.find(id)
    @list.destroy

    redirect_to lists_path
  end

  private

  def strong_params
    params.require(:list).permit(:name, :photo_url)
  end
end
