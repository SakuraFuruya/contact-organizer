class CompaniesController < ApplicationController
  before_action :set_company, only: %i[show create]

  def index
    @companies = Company.all
  end

  def show
  end

  def new
    @company = Company.new(company_params)
  end

  def create
    @company.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:company_name, :industry, :addresss)
  end

end
