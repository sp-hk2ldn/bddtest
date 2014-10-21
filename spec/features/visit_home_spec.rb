require 'rails_helper'

feature 'visit the home page' do
	scenario 'Hello World!' do
		visit '/'
		expect(page).to have_content 'Hello World'
	end
end