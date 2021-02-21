class Employer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {:Admin => 5, :common_user => 0}

  after_initialize :company_create_decision


  def email_domain
    _, email_domain = self.email.split("@")
    email_domain

  end

  def email_not_registred?(email_domain)
  Company.find_by(:email_domain => email_domain).nil?

  end

  def company_create_decision
    if email_not_registred?(email_domain)
       company = Company.new(email_domain: email_domain)
       company.save
    else      
    end

  end

end
