class ApplicationController < ActionController::Base
  private def current_member
    Member.find_by(id: session[:member_id]) if session[:member_id]
  end
  # current_memberメソッドをテンプレートの中でも使えるようにする
  helper_method :current_member

  # ログインの有無による例外発生の設定を追加
  class LoginRequired < StandardError; end
  class Forbidden < StandardError; end

  private def login_required
    raise LoginRequired unless current_member
  end

end
