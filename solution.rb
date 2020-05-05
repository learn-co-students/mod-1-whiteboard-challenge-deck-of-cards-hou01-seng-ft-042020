require 'pry'

class Deck

    attr_accessor :cards
    # @cards = []
    def self.make_deck
        Card.suits.map do |suit|
            Card.ranks.map do |rank|
                @cards << Card.new(suit, rank)
            end 
        end 
        # binding.pry
    end 

    def initialize
        # Deck.make_deck
        @cards = []
        Card.suits.map do |suit|
            Card.ranks.map do |rank|
                @cards << Card.new(suit, rank)
            end 
        end 
    end     

    def choose_card
        picked = cards.sample
        cards.delete(picked)
    end 

end

class Card
    attr_accessor :rank, :suit
    @@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @@suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end 

    def self.all
        @@all
    end 

    def self.ranks
        @@ranks
    end 

    def self.suits
        @@suits
    end 
end
