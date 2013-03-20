class CardsController < ApplicationController
  before_filter :require_login
  
  def new
    @card = deck.cards.new
  end

  def create
    card = deck.cards.new(params[:card])
    card.save
    redirect_to deck_path(deck)
  end

  def show
    @card = deck.cards.find(params[:id])
  end

  def edit
    @card = deck.cards.find(params[:id])
  end

  def update
    card = deck.cards.find(params[:id])
    card.update_attributes(params[:card])
    redirect_to deck_path(deck)
  end

  def destroy
    card = deck.cards.find(params[:id])
    card.destroy
    redirect_to deck_path(deck)
  end

private

  def deck
    @_deck ||= current_user.decks.find(params[:deck_id])
  end

  def find_card
    deck.cards.find(params[:id])
  end

end
