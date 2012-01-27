module ParkingLotObserver

  def subscribe(subscriber)
    @subscribers = @subscribers || []
    @subscribers << subscriber
  end

  private
  def notify()
    @subscribers.each { |subscriber| subscriber.parking_lot_changed(@lot.size, @total_spaces) }
  end

end