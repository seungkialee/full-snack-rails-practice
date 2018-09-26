class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @book_authorships = @book.authorships
    @all_authorships = Authorship.all
    @authorship = Authorship.new
    @book_authors = @book.authors
    @all_authors = Author.all
  end
end
