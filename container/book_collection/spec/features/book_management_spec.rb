require 'rails_helper'

RSpec.describe 'Book management', type: :feature do
  describe 'creating a new book' do
    it 'adds a book to the database and shows success message' do
      visit new_book_path
      fill_in 'Title', with: 'Test Book'
      fill_in 'Author', with: 'Test Author'
      fill_in 'Price', with: 10
      fill_in 'Published date', with: Date.today
      click_button 'Create Book'
      expect(page).to have_content('Book was successfully created.')
      expect(Book.count).to eq(1)
    end

    it 'shows error message when title is blank' do
      visit new_book_path
      fill_in 'Author', with: 'Test Author'
      fill_in 'Price', with: 10
      fill_in 'Published date', with: Date.today
      click_button 'Create Book'
      expect(page).to have_content("Title can't be blank")
      expect(Book.count).to eq(0)
    end

    it 'shows error message when author is blank' do
      visit new_book_path
      fill_in 'Title', with: 'Test Book'
      fill_in 'Price', with: 10
      fill_in 'Published date', with: Date.today
      click_button 'Create Book'
      expect(page).to have_content("Author can't be blank")
      expect(Book.count).to eq(0)
    end

    it 'shows error message when price is blank' do
      visit new_book_path
      fill_in 'Title', with: 'Test Book'
      fill_in 'Author', with: 'Test Author'
      fill_in 'Published date', with: Date.today
      click_button 'Create Book'
      expect(page).to have_content("Price can't be blank")
      expect(Book.count).to eq(0)
    end

    it 'shows error message when published date is blank' do
      visit new_book_path
      fill_in 'Title', with: 'Test Book'
      fill_in 'Author', with: 'Test Author'
      fill_in 'Price', with: 10
      click_button 'Create Book'
      expect(page).to have_content("Published date can't be blank")
      expect(Book.count).to eq(0)
    end


    # Add more integration tests as needed
  end
end
