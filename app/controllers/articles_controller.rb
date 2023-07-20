class ArticlesController < ApplicationController
  def index
     if params[:publisher_id]
         @articles = Article.where(publisher_id: params[:publisher_id]);
     else
         @articles = Article.all();
     end
  end

  def show
      @article_id = params[:id]
  end

  def new
     @publisher_id = params[:publisher_id]
     @article = Article.new;
     @action = 'Save'
  end

  def create

    @article = Article.new(article_params);
     if @article.save
        redirect_to article_index_path(article_params['publisher_id']) , notice: "Article has been save successfully"
     else
        @action = 'Save'
         render :new
     end
  end

  def edit
      @article = Article.find(params[:id]);
      @action = 'Update'
  end

  def update
    @article = Article.find(params[:id]);
    @articles = Article.update(document_params);
      if @articles
         redirect_to article_index_path(params[:id]) , notice: "Article has been update successfully"
      else
        @action = 'Update'
        render :edit
      end
  end

  def destroy
      @article = Article.find(params[:id]);
      if @article.destroy
         redirect_to articles_path, notice: "Article has been Delete successfully"
      end

  end
  private  def article_params
      params.require(:article).permit(
          :act_header, :act_body, :act_type, :publish_date , :publisher_id,
      )
   end
end
