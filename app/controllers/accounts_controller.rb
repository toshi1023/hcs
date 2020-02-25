class AccountsController < ApplicationController
  before_action :login_required

  def show
    @member = current_member
    # @account = Member.find(params[:name])
    # @articles = Article.find(params[:name])
    @followeds = Relationship.order(updated_at: :desc)
  end

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
