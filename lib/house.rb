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

                            # :key
    def rooms_from_category(room_type)
        @rooms.select do |room|
            room.category == room_type
        end
    end

    def area
        house_area = 0
        @rooms.each do |room|
            house_area += room.area
        end
        house_area
    end    
end 

