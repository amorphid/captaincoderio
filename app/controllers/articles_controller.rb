class ArticlesController < ApplicationController
  def create
    @article = Article.new(post_params)

    if @article.save
      redirect_to article_path(@article), notice: "Article created successfully"
    else
      render "new"
    end
  end

  def edit
    find_with_params_id
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    find_with_params_id
  end

  def update
    find_with_params_id

    if @article.update_attributes(post_params)
      redirect_to article_path(@article), :notice => "Article updated successfully"
    else
      render "edit"
    end
  end

private

  def find_with_params_id
    @article = Article.find(params[:id])
  end

  def post_params
    params[:article].permit(:name, :body)
  end
end
