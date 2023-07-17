class SuppliersController < ApplicationController
    before_action :authenticate_admin!
        #Common function
        # before_action :set_employee, only: [:edit,:update,:show,:destroy ]
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
            @employee = Employee.find(params[:id])
            @action = 'Update'
          end

          def update
               @employee = Employee.find(params[:id])
            if @employee.update(supplier_params)
              redirect_to employees_path, notice: 'Employee has been Update successfully'
            else
            @action = 'Update'
            render :edit
            end
          end

          def show
            @employee = Employee.find(params[:id])
          end

          def destroy
            @employee = Employee.find(params[:id])
            if @employee.destroy
              redirect_to employees_path, notice: 'Employee has been Delete successfully'
            end
          end

          private def supplier_params
            params.require(:employee).permit(
               :first_name,
               :last_name,
               :email,
               :country,
               :city,
               :address_line_1,
               :pincode,
              :age,
              :date_of_joining,
              :date_of_birth,
              :gander,
              :about
            )
          end

          # def set_employee
          #   @employee = Employee.find(params[:id])
          #   resuce ActiveRecord::RecordNotFound => error
          #   redirect_to employee_path, notice: error
          # end
end
