class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.category_id = params[:category_id]
    if @article.save
      redirect_to category_article_path(@article.category_id, @article)
    else
      render 'articles/new'
    end
  end

  def edit
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    article.update(article_params)

    redirect_to article_path(article)
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy

    redirect_to categories_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :description, :email, :price)
  end
end
