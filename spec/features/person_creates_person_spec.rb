require 'rails_helper'

feature 'person creates person' do
    scenario 'successfully' do
        visit people_path
        click_on 'New Person'
        
        select 'Student', from: 'Position'
        fill_in 'Name', with: 'John'
        click_on 'Create Person'
        
        expect(page).to have_content 'Person was successfully created.'
        expect(page).to have_content 'Position: Student'
        expect(page).to have_content 'Name: John'
    end
end