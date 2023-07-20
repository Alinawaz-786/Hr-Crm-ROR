class DocumentsController < ApplicationController
  def index
    @documents = Document.all();
  end

  def show
    @document = Document.find(params[:art_id]);
  end

  def new
     @article_id = params[:art_id]
     @document = Document.new;
     @action = 'Save'
  end


end
