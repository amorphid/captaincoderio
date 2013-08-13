class ArticlesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to article_path(@article), notice: "Article created successfully"
    else
      render "new"
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path, notice: "Article deleted successfully"
  end

  def edit
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
  end

  def update
    if @article.update_attributes(article_params)
      redirect_to article_path(@article), :notice => "Article updated successfully"
    else
      render "edit"
    end
  end

private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params[:article].permit(:title, :body)
  end
end

