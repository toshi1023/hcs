class LikesController < ApplicationController

  def create
    @like = Like.create(member_id: current_member.id, article_id: params[:article_id])
    @likes = Like.where(article_id: params[:article_id])
    @article = Article.find(params[:id])
  end

  def destroy
    like = Like.find_by(member_id: current_member.id, article_id: params[:article_id])
    like.destroy
    @likes = Like.where(article_id: params[:article_id])
    @article = Article.find(params[:id])
  end
end
