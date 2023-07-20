class PublishersController < ApplicationController
  helper CountriesHelper
  def index
      @publishers =  Publisher.all();
  end

  def show
  end

  def new
     @publisher = Publisher.new
    @action = 'Save'
  end

  def create
      @publisher =  Publisher.new(publisher_params);
          if @publisher.save
            redirect_to publishers_path, notice: 'Publisher has been create successfully'
          else
          @action = 'Save'
          render :new
       end
  end

  def edit
  end

  def update
  end

  def destroy
  end

     private def publisher_params
          params.require(:publisher).permit(
             :first_name,
             :last_name,
             :email,
             :country,
             :city,
             :address,
             :dob,
             :age
          )
     end


end
