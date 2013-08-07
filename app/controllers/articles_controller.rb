class ArticlesController < ApplicationController
  def create
    @article = Article.new(post_params)

    if @article.save
      redirect_to article_path(@article), notice: "Article created successfully"
    else
      render "new"
    end
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

private

  def post_params
    params[:article].permit(:name, :body)
  end
end
