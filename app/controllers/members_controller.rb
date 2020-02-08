class MembersController < ApplicationController
  def index
    if params[:member_id]
      @member = Member.find(params[:member_id])
    end
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(params[:member])
    if @member.save
      redirect_to members_path, notice: "Register Success!"
    else
      flash[:alert] = "会員の作成に失敗しました!"
      render :new
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
  end

  def show
    @member = Member.find(params[:id])
  end
end
