class WordsController < ApplicationController

  def index
    @words = Word.all.order(id: 'desc')
    # @words = Word.all
  end

  def show
    @word = Word.find(params[:id])
  end

  def create
    # render plain: params[:word].inspect
    # @word = Word.new(params[:word])
    # @word = Word.new(params.require(:word).permit(title))
    @word = Word.new(word_params)
    if @word.save
      redirect_to words_path
    else
      render 'new'
      # render plain: @word.errors.inspect
    end
  end

  def new
    @word = Word.new
  end

  def edit
    @word = Word.find(params[:id])
  end

  def update
    @word = Word.find(params[:id])
    if @word.update(word_params)
      redirect_to word_path
    else
      render 'edit'
    end
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    redirect_to words_path
  end

  private
    def word_params
      params.require(:word).permit(:title)
    end
end
