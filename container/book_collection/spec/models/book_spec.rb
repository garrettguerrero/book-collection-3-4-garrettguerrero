require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    it 'validates presence of title' do
      book = Book.new(title: '')
      expect(book.valid?).to be false
      expect(book.errors[:title]).to include("can't be blank")
    end

    it 'validates presence of author' do
      book = Book.new(title: 'Test', price: 10, published_date: Date.today)
      expect(book.valid?).to be false
      expect(book.errors[:author]).to include("can't be blank")
    end
  
    it 'validates presence of price' do
      book = Book.new(title: 'Test', author: 'Author', published_date: Date.today)
      expect(book.valid?).to be false
      expect(book.errors[:price]).to include("can't be blank")
    end

    it 'validates presence of published date' do
      book = Book.new(title: 'Test', author: 'Author', price: 10)
      expect(book.valid?).to be false
      expect(book.errors[:published_date]).to include("can't be blank")
    end

    # Add more validation tests as needed
  end
end