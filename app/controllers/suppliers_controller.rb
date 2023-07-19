class SuppliersController < ApplicationController
    before_action :authenticate_admin!
     def index
        @suppliers =  Supplier.all();
     end

    def new
        @supplier =  Supplier.new;
        @action = 'Save'
    end

     def create
        @supplier =  Supplier.new(supplier_params);
        if @supplier.save
          redirect_to suppliers_path, notice: 'Supplier has been create successfully'
        else
        @action = 'Save'
        render :new
        end
     end

      def edit
        @supplier = Supplier.find(params[:id])
        @action = 'Update'
      end

      def update
           @supplier = Supplier.find(params[:id])
        if @supplier.update(supplier_params)
          redirect_to employees_path, notice: 'Suppliers has been Update successfully'
        else
        @action = 'Update'
        render :edit
        end
      end

      def show
        @supplier = Supplier.find(params[:id])
      end

      def destroy
        @supplier = Supplier.find(params[:id])
        if @supplier.destroy
          redirect_to suppliers_path, notice: 'Suppliers has been Delete successfully'
        end
      end

      private def supplier_params
            params.require(:supplier).permit(
                   :company_name,
                   :contact_fn,
                   :contact_ln,
                   :contact_title,
                   :address1,
                   :address2,
                   :city,
                   :state,
                   :country,
                   :phone,
                   :fax,
                   :email,
                   :url,
                   :pay_methods,
                   :discount_type,
                   :types_goods,
                   :notes,
                   :discount_available,
                   :postal_code,
            )
      end

              # def set_employee
              #   @supplier = Supplier.find(params[:id])
              #   resuce ActiveRecord::RecordNotFound => error
              #   redirect_to employee_path, notice: error
              # end
end
