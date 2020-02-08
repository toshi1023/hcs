class ArticlesController < ApplicationController
  # indexとshow以外の機能はログインが必須に設定
  before_action :login_required, except: [:index, :show]

  def index
    if params[:member_id]
      @member = Member.find(params[member_id])
    end

    @articles = Article.all.order(updated_at: :desc)

    # ページネーションを設定（10件につき1ページ）
    @articles = @articles.page(params[:page]).per(10)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.writer = current_member
    if @article.save
      redirect_to articles_path, notice: "Create Success!"
    else
      flash[:alert] = "記事の作成に失敗しました!"
      render :new
    end
  end

  def edit
    # ログインメンバーの記事を取得
    @article = current_member.articles.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
    @article = current_member.articles.find(params[:id])
    if @article.update(article_params)
      redirect_to articles_path, notice: "Edit Success!"
    else
      flash[:alert] = "記事の修正に失敗しました!"
      render :edit
    end
  end

  def destroy
    @article = current_member.articles.find(params[:id])
    @article.destroy
    redirect_to articles_path, notice: "Delete Success!"
  end

  # 以下、ストロングパラメータ
  # formから送られてきたデータをparamsメソッドに入れる
  private
    def article_params
      params.require(:article).permit(:name, :title, :content, :women)
    end

end
