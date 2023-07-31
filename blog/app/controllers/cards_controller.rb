class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def edit
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    card = Card.create(card_params)
    redirect_to cards_path
  end

  def update
    @card = Card.find(params[:id])
    @card.update(card_params)
    redirect_to cards_path
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to cards_path
  end
  
  private
  def card_params
    params.require(:card).permit(:title,:text)
  end
end
