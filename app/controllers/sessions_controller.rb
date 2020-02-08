class SessionsController < ApplicationController
  # ログイン機能を設定
  def create
    member = Member.find_by(name: params[:name])
    if member && member&.authenticate(params[:password])
      # ブラウザのcookieにハッシュ化したidを保存
      session[:member_id] = member.id
      redirect_to :root, notice:"Login Success!"
    else
      flash.alert = "名前とパスワードが一致しません"
      # membersコントローラのindexページに飛ぶように設定
      redirect_to controller: 'members', action: 'index'
    end
  end

  # ログアウトの設定
  def destroy
    session.delete(:member_id)
    redirect_to :root, notice:"Logout Success!"
  end
end
