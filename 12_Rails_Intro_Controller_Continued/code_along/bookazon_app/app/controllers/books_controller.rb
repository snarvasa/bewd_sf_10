class BooksController < ApplicationController

  #READ: this will retrieve all books thru active_record
  def index
     @books = Book.all
  end

  def show
   @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end

  def create
  @book = Book.new(book_params)

  if @book.save
    redirect_to @book
  else
    render 'new'
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end
  end

  private

  def book_params                                                                                      #this method should only be callable within this method. Security!
    params.require(:book).permit(:title, :year_published, :author, :available, :genre, :image_url)     #within parms, a model called book will pert the following attributes can be changed
  end

  def get_book

  end

  end
