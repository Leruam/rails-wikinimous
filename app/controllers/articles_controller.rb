class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    set_article
  end

  private

  def article_params
    parmas.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
