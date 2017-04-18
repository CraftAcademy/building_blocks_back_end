class NewsController < ApplicationController
  def new
    @news = News.new
  end

  def create
    @news = News.new news_params
    if @news.save
      flash[:notice] = "News post created!"
      redirect_back(fallback_location: new_news_path)
    end
  end

  private

  def news_params
    params.require(:news).permit(:title, :description)
  end
end
