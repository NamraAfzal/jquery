class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def test_index; end

  def show
    @article = Article.find(params[:id])
  end

  def new
    byebug
    @article = ArticleForm.new
  end

  def create
    @article =ArticleForm.new(article_params)
    if @article_form.save
      redirect_to articles_path, notice: 'Article was successfully created'
      byebug
    else
      render :new
    end
  end
  def edit
    @article = Article.find(params[:id])
  end
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated'
    else
      render :edit
    end
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, notice: 'Article was deleted.'
  end
  private
  def article_params
    params.require(:article_form).permit(:title, :body)
  end
end
