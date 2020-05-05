class Card
    attr_accessor :rank, :suit

    def initialize(suit,rank)
        @rank = rank
        @suit = suit
    end
end


class Deck
    attr_accessor :cards

    def initialize
        @cards = []
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        ranks.each do |rank|
            suits.each do |suit|
                @cards << Card.new(suit,rank)
            end
        end
    end

    def choose_card
        @cards.shuffle
        rand_card = @cards.first
        @cards.shift
        rand_card
    end
end

# class Card
#     attr_accessor :rank, :suit

#     def initialize(rank,suit)
#         @rank = rank
#         @suit = suit
#     end
# end
