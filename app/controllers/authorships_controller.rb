class AuthorshipsController < ApplicationController


  def create
    Authorship.create(author_id:params[:authorship][:author_id],book_id:params[:book_id])
    redirect_to "/books/#{params[:book_id]}"
  end

  def destroy
    @authorship = Authorship.find(params[:id])
    @book = @authorship.book
    @authorship.destroy
    redirect_to book_path(@book)
  end

end
