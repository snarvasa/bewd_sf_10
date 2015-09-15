class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = get_book
  end

  def new                       #new action creates an empty instance of book
    @book = Book.new            #makes it available to new.html.erb
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render 'new'
    end
  end

  def edit
    @book = get_book
  end

  def update
    @book = get_book

    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end

  def destroy
    @book = get_book
    @book.destroy

    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :year_published, :author, :available, :genre, :image_url)
  end

  def get_book
    @book = Book.find(params[:id])
  end

end
