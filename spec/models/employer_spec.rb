require 'rails_helper'

RSpec.describe Employer, type: :model do

  it 'email domain method' do
    employer = Employer.create!(email: 'codesaga@codesaga.com', password: '123456')

  expect(employer.email_domain).to eq "codesaga.com"
  end

  it 'is this email_domain already has company?' do
    employer = Employer.create!(email: 'codesaga@codesaga.com', password: '123456')
    email_domain = employer.email_domain
    company = Company.create!(email_domain: "campuscode.com")

    expect(employer.email_not_registred?(email_domain)).to eq false
  end

  it 'Creating a company if it does not exist with' do 
    company = Company.create!(:email_domain => "campuscode.com")
    employer = Employer.create!(email: 'codesaga@codesaga.com', password: '123456')
    
    email_domain = employer.email_domain

    expect(Company.last.email_domain).to eq "codesaga.com"
  end

end
