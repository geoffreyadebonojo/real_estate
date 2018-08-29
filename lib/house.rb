require 'pry'


class House

    attr_reader :address, :rooms
    

    def initialize(price_string, address, rooms)
        @price_string = price_string
        @address = address
        @rooms = rooms
    end

    def price
        @price_string.split("$")[1].to_i
    end

    def add_room(room_object)
        @rooms << room_object
    end


end 

