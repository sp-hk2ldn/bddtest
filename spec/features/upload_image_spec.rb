require 'rails_helper'

feature 'Visit the scenario page' do
	scenario 'Upload Image' do
		visit root_path
		expect(page).to have_content 'Image'
	end

	scenario 'Upload Successful' do
		visit new_food_item_path
		fill_in 'Name', :with => 'Chicken'
		click_button "Create Food item"
		expect(page).to have_content 'Food item was successfully created.'
		expect(page).to have_content 'Chicken'
	end
end