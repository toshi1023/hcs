class FriendsController < ApplicationController
  def index
    @search_params = member_search_params
    @friends = Member.search(@search_params).order(updated_at: :desc)
    @friends = @friends.page(params[:page]).per(10)
  end

  def show
    @member = Member.find(params[:id])
    # follow_buttonビューで使用するため@friendsの値を設定
    @friends = Member.search(@search_params).order(updated_at: :desc)
  end


  # ストロングパラメータ
  def member_search_params
    params.fetch(:search, {}).permit(:name)
  end
end
