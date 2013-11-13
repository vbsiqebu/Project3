class ArticlesController < ApplicationController
  def index
    @articles = Article.includes( :comments ).all

    render json: @articles.to_json( include: [:comments] )
  end

  def show
    @article = Article.includes( :comments ).find( params[:id] )

    render json: @article.to_json( include: [:comments] )
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
