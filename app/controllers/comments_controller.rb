class CommentsController < ApplicationController
  def index
    article = Article.includes(:comments).find(params[:article_id])
    comments = article.comments

    render json: comments.to_json(
      include: [ 
        article: { 
          only: [ :title ]
        } 
      ], 
      except: [ :updated_at ]
    )
  end

  def show
    article = Article.includes(:comments).find(params[:article_id])
    comments = article.comments.find(params[:id])

    render json: comment.to_json(
      include: [ 
        article: { 
          only: [ :title ]
        } 
      ], 
      except: [ :updated_at ]
    )
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
