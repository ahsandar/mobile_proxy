class ProxyApi::V1::ArticlesController < ProxyApi::BaseController

  before_action :set_article, only: [:show, :update, :destroy]
  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all

    render json: @articles
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    render json: @article
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    if @article.save
      render json: @article, status: :created, location: nil
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
   if @article.update(article_params)
      head :no_content
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy

    head :no_content
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def article_params
    params.require(:article).permit(:title,
                                 :body,:url,:category_id) if params[:article]
  end

end