require 'rails_helper'

  feature 'Visitante acessa o home' do 
    scenario 'com sucesso' do
      
      visit root_path

      expect(page).to have_content('Boas Vindas')
      
    end
  end