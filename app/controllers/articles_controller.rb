class ArticlesController < ApplicationController
  def banana
  end

  def create
    @article = Article.new(params[:article].permit(:name, :body))

    if @article.save
      redirect_to article_path(@article), notice: "Article created successfully"
    else
      # redirect_to new_article_path
      render "new"
    end
  end

  def new
    @article = Article.new
  end

  def show
  end
end
