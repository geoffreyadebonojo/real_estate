class Room
    attr_reader :category, :area

    def initialize(category, length, width)
        @category = category
        # @length = length
        # @width = width
        # @area = length * width
        @area = calculate_area(length, width)
    end

    def calculate_area(length, width)
      length * width
    end

    # def area
    #     @length * @width
    # end
end
