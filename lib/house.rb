class House
  attr_reader :address,
              :rooms

  def initialize(price_in_dollars, address)
    @price_in_dollars = price_in_dollars
    @address = address
    @rooms = []
  end

  def price
    @price_in_dollars[1..-1].to_i
  end

  def add_room(room_object)
    @rooms << room_object
  end

  def rooms_from_category(category_symbol)
    @rooms.find_all do |room|
      room.category == category_symbol
    end
  end

  def area
    sum = 0
    @rooms.each do |room|
      sum += room.area
    end
    sum
    # @rooms.map do |room|
    #   room.area
    # end.sum
    # @rooms.sum do |room|
    #   room.area
    # end
    # @rooms.inject(0) do |sum, room|
    #   sum + room.area
    # end
  end

  def price_per_square_foot
    (price / area.to_f).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by do |room|
      room.area
    end.reverse
  end

  def rooms_by_category
    categorized_rooms = {}
    @rooms.each do |room|
      if categorized_rooms[room.category].nil?
        categorized_rooms[room.category] = [room]
      else
        categorized_rooms[room.category] << room
      end
    end
    return categorized_rooms
    # @rooms.group_by do |room|
    #   room.category
    # end
  end
end
