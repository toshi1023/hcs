class RelationshipsController < ApplicationController
  # current_page?メソッドを使用するためUrlHelperをinclude
  include ActionView::Helpers::UrlHelper

  # フォロー機能のための中間テーブル

  before_action :set_user

  # マイページでのフォロー機能のアクション
  def follow
    @follow = current_member.follow(params[:id])

    if @follow
      redirect_to account_path, notice: "Followed Success!"
    else
      flash[:alert] = "フォローに失敗しました!"
      redirect_to account_path
    end
  end

  def unfollow
    @unfollow = current_member.unfollow(params[:id])

    if @unfollow
      redirect_to account_path, notice: "Unfollowed Success!"
    else
      flash[:alert] = "フォローの解除に失敗しました!"
      redirect_to account_path
    end
  end

  # 友達検索ページでのフォロー機能のアクション
  def friends_follow
    @follow = current_member.follow(params[:id])

    if @follow
      redirect_to friend_path, notice: "Followed Success!"
    else
      flash[:alert] = "フォローに失敗しました!"
      redirect_to friend_path
    end
  end

  def friends_unfollow
    @unfollow = current_member.unfollow(params[:id])

    if @unfollow
      redirect_to friend_path, notice: "Unfollowed Success!"
    else
      flash[:alert] = "フォローの解除に失敗しました!"
      redirect_to friend_path
    end
  end

  # ストロングパラメータ
  private

  def set_user
    @user = Member.find(params[:id])
  end

end
