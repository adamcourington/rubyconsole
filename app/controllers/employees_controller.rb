class EmployeesController < ApplicationController
    def index
        @pagy, @employees = pagy(Employee.order (:name))
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
    end
    
    def edit
        @employee = Employee.find(params[:id])
    end

    def create
        @employee = Employee.new(employee_params)
       
      if @employee.save
        redirect_to @employee
        else
          render 'new'
        end
    end

    def update
        @employee = Employee.find(params[:id])

        if @employee.update(employee_params)
            redirect_to @employee
          else
            render 'edit'
          end
    
    end

    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy
       
        redirect_to employees_path
      end
       
      private
        def employee_params
          params.require(:employee).permit(:name, :phone_number, :address, :ems_number, :ems_level, :emergency_contact_name, :emergency_contact_number, :email, :hire_date)
        end
end
