class EmployeesController < ApplicationController

    #Common function
    before_action :set_employee, only: [:edit,:update,:show,:destroy ]
    def index
        @employees =  Employee.all();
      end
    
      def new
        @employees =  Employee.new;
        @action = 'Save'
      end

      def create
        @employees =  Employee.new(employee_params);
        if @employees.save
          redirect_to employees_path, notice: 'Emplyee has been create successfully'
        else
        @action = 'Save'
        render :new
        end
      end
 
      def edit
        @action = 'Update'
      end

      def update
        if @employees.update(employee_params)
          redirect_to employees_path, notice: 'Emplyee has been Update successfully'
        else
        @action = 'Update'
        render :edit
        end
      end
      
      def show

      end
    
      def destroy
        if @employee.destroy
          redirect_to employees_path, notice: 'Emplyee has been Delete successfully'
        end
      end

      private def employee_params
        params.require(:employee).permit(
           :first_name,
           :last_name,
           :email,
           :country,
           :city,
           :address_line_1,
           :pincode,
              :age
        )
      end 

      def set_employee
        @employee = Employee.find(params[:id])
        resuce ActiveRecord::RecordNotFound => error
        redirect_to employee_path, notice: error
      end 
end
