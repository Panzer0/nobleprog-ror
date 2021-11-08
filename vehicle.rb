class Vehicle
    class InvalidDoorOperationException < StandardError; end

    @open_doors_count
    @DOOR_COUNT
    def initialize
        @open_doors_count = 0
    end

    attr_accessor :open_doors_count
    
    def open_door
        if @open_doors_count >= self.class::DOOR_COUNT
        @open_doors_count++
    end

    def close_door
        raise InvalidDoorOperationException if @open_doors_count <= 0
        @open_doors_count--
    end
end

class PassengerCar < Vehicle
    DOOR_COUNT = 4
end

class Coach < Vehicle
    DOOR_COUNT = 2
end

