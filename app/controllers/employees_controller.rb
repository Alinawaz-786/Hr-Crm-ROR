class EmployeesController < ApplicationController

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
          redirect_to employees_path, notice: 'Emplyee has benn create successfully'
        else
        render :new
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
 
      def edit
        @employees = Employee.find(params[:id])
        @action = 'Update'
      end

      def update
        @employees = Employee.find(params[:id])

        if @employees.update(employee_params)
          redirect_to employees_path, notice: 'Emplyee has benn Update successfully'
        else
        render :edit
        end
      end

      
      def show
        @employee = Employee.find(params[:id])

      end
    
      def destroy
      end
end
