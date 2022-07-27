require './book'
require './rental'

require 'yaml'

describe Book do
  before :each do
    @book = Book.new 'test', 'test'
  end

  it 'print the book title' do
    expect(@book.title).to eq 'test'
  end

  it 'print the book author' do
    expect(@book.author).to eq 'test'
  end
end