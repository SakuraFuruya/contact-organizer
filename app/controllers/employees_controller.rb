class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[show create]

  def index
    @company = Company.find(params[:company_id])
    @employees = @company.employees
  end

  def show
  end

  def new
    @employee = Employee.new(employee_params)
  end

  def create
    @employee.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:fullname, :phone_number, :email)
  end


end
