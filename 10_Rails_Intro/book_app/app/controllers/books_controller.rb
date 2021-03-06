class BooksController < ApplicationController
<<<<<<< HEAD
  before_action :set_book, only: [:show, :edit, :update, :destroy] #before you call this action, call set_book

=======
  before_action :set_book, only: [:show, :edit, :update, :destroy]
>>>>>>> e79a01cdc7abe9dc890e4f3a29c983909175c85e

  # GET /books
  # GET /books.json
  def index
<<<<<<< HEAD
    @books = Book.all #this is the method that will fetch all books
=======
    @books = Book.all
>>>>>>> e79a01cdc7abe9dc890e4f3a29c983909175c85e
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
<<<<<<< HEAD
  def new #this corresponds with the books#new in the routes
    @book = Book.new  #this creates a new book class instance
    #blank instance of book is being prepared, here
=======
  def new
    @book = Book.new
>>>>>>> e79a01cdc7abe9dc890e4f3a29c983909175c85e
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
<<<<<<< HEAD
    @book = Book.new(book_params)#instance of book is being created with these parameters
    #binding.pry
    respond_to do |format|
      if @book.save #once you've saved the instance then
        format.html { redirect_to @book, notice: 'Book was successfully created.' } #redirect the user to a path called book
=======
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
>>>>>>> e79a01cdc7abe9dc890e4f3a29c983909175c85e
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
<<<<<<< HEAD
      @book = Book.find(params[:id])    #find the ID of the book, associate it with an instance variable called book
      #make this instance available to every action that uses set_book
      #params: parameters that are being provided to some view
=======
      @book = Book.find(params[:id])
>>>>>>> e79a01cdc7abe9dc890e4f3a29c983909175c85e
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :author, :year_published, :genre, :available)
    end
end
