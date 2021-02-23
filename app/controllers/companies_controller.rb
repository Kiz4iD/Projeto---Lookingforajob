# frozen_string_literal: true

class CompaniesController < ApplicationController
  def new
    @company = Company.new
    redirect_to companies_path
  end

  def create
    @company = Company.new(company_params)
    @company.save
    redirect_to campany_path(@company)
  end

  private

  def company_params
    params.require(:company).permit(:company_name, :logo, :address, :registred_number,
                                    :website, :linkedin, :facebook, :instagra)
  end
end
