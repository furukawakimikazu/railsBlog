class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.order("created_at DESC")
  end
  

  def show
    find_article
  end

  def new
    @article = Article.new
  end

  def edit
    find_article
  end
  

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: '作成出来ました。'
    else
      redirect_to new_article_path, alert: '作成できませんでした。'  
      # render "new"
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: '更新出来ました。'
    else
      redirect_to edit_article_path(@article), alert: '更新できませんでした。'
      # render :edit, alert: '更新できませんでした。'
      # render template: "articles/edit", alert: '更新できませんでした。'
    end
  end

  def destroy
    if @article.destroy
      redirect_to root_path, notice: '削除に成功しました。'
    else
      redirect_to root_path, alert: '削除できませんでした。'
    end
  end

    private
      def find_article
        @article = Article.find(params[:id])
      end

      def article_params
        params.require(:article).permit(:title,:body)
      end  
end
