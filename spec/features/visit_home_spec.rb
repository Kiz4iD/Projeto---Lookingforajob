require 'rails_helper'

  feature 'Vistor on root page' do 
    scenario 'sections available on root page' do
      
      visit root_path
      expect(page).to have_content('Companies Available')
      expect(page).to have_content('Employer Section')
      expect(page).to have_content('Candidate Section')
      
    end

    scenario 'click on Companies' do
      
      visit root_path
      click_on "Companies Available"
      
    end
    
    scenario 'click on Employer' do
      
      visit root_path
      click_on "Employer Section"
      
      expect(page).to have_content("Email")
      expect(page).to have_content("Password")
      expect(page).to have_content("Password confirmation")

    end

    scenario 'click on Candidate Section' do
      
      visit root_path
      click_on "Candidate"
      
      expect(page).to have_content("Email")
      expect(page).to have_content("Password")
      expect(page).to have_content("Password confirmation")

    end

  end