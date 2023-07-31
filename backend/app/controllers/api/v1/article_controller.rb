class Api::V1::ArticleController < ApplicationController
  def index
    articles = Article.all
    render json: article, status: 200
  end

  def show
    article = Article.find_by(:id params[:id])
    if article
      render json: article, status: 200
    else
      render json:{
        error:'article not found'
      }
  end

  def create
    article = new Article(
      title:arti_params[:title]
      body:arti_params[:body]
      author:arti_params[:author]
    )
    if article.save
      render json: article, status: 200
    else
      render json{
        error:"error while creating"
      }
  end

  def update
    article = Article.find_by(:id params[:id])
    if article
      Article.update(title: params[:title], body: params[:body], author[:author])
      render json: "Article record updated successfully"
    else
      render json: "error while updating"
  end

  def destroy
    article = Article.find_by(:id params[:id])
    if article:
      article.destroy
      render json: "article deleted"
    else
      render json{
        error "error while deleting"
      }
  end

  private:
  def arti_params
    params.require(:article).permit([
      :title,
      :body,
      :author
    ])
  end
end
