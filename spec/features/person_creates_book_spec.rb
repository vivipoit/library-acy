require 'rails_helper'

feature 'person creates book' do
    scenario 'sucessfully' do
        visit books_path
        click_on 'New Book'
        
        fill_in 'Name', with: 'Sunset Beach'
        fill_in 'Author', with: 'Mary Kay Andrews'
        fill_in 'Category', with: 'Romance'
        click_on 'Create Book'
        
        expect(page).to have_content 'Book was successfully created.'
        expect(page).to have_content 'Name: Sunset Beach'
        expect(page).to have_content 'Author: Mary Kay Andrews'
        expect(page).to have_content 'Category: Romance'
    end
end