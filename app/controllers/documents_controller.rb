class DocumentsController < ApplicationController
  def index
    @documents = Document.all();
  end

  def show
    @document = Document.find(params[:id]);
  end

  def new
     @employee_id = params[:emp_id]
     @document = Document.new();
     @action = 'Save'
  end

  def create
     @document = Document.new(document_params);
     if @document.save
        redirect_to documents_path, notice: "Documents has been save successfully"
     else
        @action = 'Save'
         render :new
     end
  end

  def edit
     @document = Document.find(params[:id]);
     @action = 'Update'
  end

  def update
    @documents = Document.update(document_params);
    if @documents
       redirect_to documents_path, notice: "Documents has been update successfully"
    else
      @action = 'Update'
      render :edit
    end
  end

  def destroy
    if @document.destroy
       redirect_to documents_path, notice: "Documents has been Delete successfully"
    end
  end

  private  def document_params
    params.require(:document).permit(
        :name,
        :doc_type,
        :employee_id,
        :image
    )
  end
end
