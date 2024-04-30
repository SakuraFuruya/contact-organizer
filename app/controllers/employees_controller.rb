class EmployeesController < ApplicationController
  before_action :set_company, only: %i[index create update]
  before_action :set_employee, only: %i[show edit update destroy]

  def index
    @employees = @company.employees.all
    @new_employee = @company.employees.new
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = @company.employees.new(employee_params)
    if @employee.save
      redirect_to company_employees_path(@company)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @employee.update(employee_params)
    redirect_to company_employee_path(@company, @employee)
  end

  def destroy
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def set_company
    @company = Company.find(params[:company_id])
  end

  def employee_params
    params.require(:employee).permit(:fullname, :phone_number, :email)
  end


end
