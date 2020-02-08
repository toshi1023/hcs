class FriendsController < ApplicationController
  def index
    @friends = Member.order(updated_at: :desc)
    @friends = @friends.page(params[:page]).per(10)
  end

  def show
    @member = Member.find(params[:id])
  end
end
