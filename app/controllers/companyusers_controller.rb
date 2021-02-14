class CompanyusersController < ApplicationController
  def index
  end

  def show 
    @companyusers = Companyuser.all
  end
  
  def new
    @companyuser = Companyuser.new
  end

  def create
  end

  def edit
  end
  
  def update
  end


  private

  def strongparams
  end
end 