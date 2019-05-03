require 'rails_helper'

feature 'person creates checkout' do
    scenario 'sucessfully' do
        create(:book, name: 'Sunset Beach')
        create(:person, name: 'John')
        visit checkouts_path
        click_on 'New Checkout'
        
        fill_in 'Duration', with: '2 weeks'
        fill_in 'Start Date', with: '2019-05-03'
        select 'Sunset Beach', from: 'Book'
        select 'John', from: 'Person'
        
        expect(page).to have_content 'Checkout was successfully created.'
        expect(page).to have_content 'Duration: 2 weeks'
        expect(page).to have_content 'Start Date: 2019-05-03'
        expect(page).to have_content 'Book: Sunset Beach'
        expect(page).to have_content 'Person: John'
    end
end