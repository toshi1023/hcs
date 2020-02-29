class AccountsController < ApplicationController
  before_action :login_required

  def show
    @member = current_member

    # ログイン中のユーザがフォローしているアカウントのみ表示されるように設定
    @followeds = Relationship.where(follower_id: current_member.id).order(updated_at: :desc)
  end

  # ユーザアカウントの編集
  def edit
    @member = current_member
  end

  def update
    @member = current_member
    @member.assign_attributes(params[:member])
    if @member.save
      redirect_to :account, notice: "Accont Saved!"
    else
      render "edit"
    end
  end
end
