class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end
  
  def new
  @company = Company.new
  end

  def create
    company_params = params.permit(:company).require(:companyname, :logo, :address,
                                                      :website, :instagram, :facebook,
                                                      :linkedin)  
    @company = Company.new(company_params)
  end

  def edit
  end

  def update
  end
  
  def delete
  end

end