require 'rails_helper'

RSpec.describe 'foods index', type: :feature do
  describe 'all the things on the page' do
    xit 'should display ten items related to search' do
      visit root_path

      fill_in(:search, with: 'sweet potatoes')
      click_button(:search)

      expect(page).to have_content('Total Results: 55579')
      expect(page).to have_content('SWEET POTATOES') #[foods][description] foods.each do food food[:description]
      expect(page).to have_content('8901020020844') #[foods][description] foods.each do food food[:gtiUpc]
      expect(page).to have_content('NOT A BRANDED ITEM') #[food[:brandOwner]
      expect(page).to have_content('ORGANIC SWEET POTATOES.') #[food[:ingredients]

      # expect(page).to have_content('sweet potato') #[foods][description] foods.each do food food[:description]
      # expect(page).to have_content('sweet potato tots') #[foods][description] foods.each do food food[:description]
      # expect(page).to have_content('bread, sweet potato') #[foods][description] foods.each do food food[:description]
      # expect(page).to have_content('pie, sweet potato') #[foods][description] foods.each do food food[:description]
      # expect(page).to have_content('sweet potato chips') #[foods][description] foods.each do food food[:description]
    end
  end
end

# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

# And for each of the foods I should see:
# - The food's GTIN/UPC code food[:gtiUpc]
# - The food's description food[:description]
# - The food's Brand Owner 
# - The food's ingredients