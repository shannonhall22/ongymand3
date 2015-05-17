class SearchesController < ApplicationController
  def index
    @searches = Search.all
  end

  def show
    @search = Search.find(params[:id])
  end

  def new
    @search = Search.new
  end

  def create
    @search = Search.new
    @search.zip = params[:zip]
    @search.weights = params[:weights]
    @search.cardio = params[:cardio]
    @search.studios = params[:studios]
    @search.classes = params[:classes]
    @search.pool = params[:pool]
    @search.hot_tub = params[:hot_tub]
    @search.basketball = params[:basketball]
    @search.raquetball = params[:raquetball]
    @search.trainer = params[:trainer]
    @search.sauna = params[:sauna]

    if @search.save
      redirect_to gym2s_url
    else
      render 'new'
    end
  end

  def edit
    @search = Search.find(params[:id])
  end

  def update
    @search = Search.find(params[:id])

    @search.zip = params[:zip]
    @search.weights = params[:weights]
    @search.cardio = params[:cardio]
    @search.studios = params[:studios]
    @search.classes = params[:classes]
    @search.pool = params[:pool]
    @search.hot_tub = params[:hot_tub]
    @search.basketball = params[:basketball]
    @search.raquetball = params[:raquetball]
    @search.trainer = params[:trainer]
    @search.sauna = params[:sauna]

    if @search.save
      redirect_to search_url(@search.id), :notice => "Search updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @search = Search.find(params[:id])

    @search.destroy

    redirect_to searches_url, :notice => "Search deleted."
  end
end
