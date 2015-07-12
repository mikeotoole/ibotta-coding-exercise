# Encapsulates Event stats for and object. Can be used with anything that
# has_many :events (Retailer, Store, Customer).
class EventStats
  attr_reader :count, :busiest_dow, :busiest_dow_visits, :busiest_hour, :busiest_hour_visits

  private

  def initialize(has_events)
    if (@count = has_events.events.count) > 0
      dow_event = has_events.events.group_by_dow.order('visits desc').first
      @busiest_dow = Date::DAYNAMES[dow_event.dow]
      @busiest_dow_visits = dow_event.visits

      hour_event = has_events.events.group_by_hour.order('visits desc').first
      @busiest_hour = Time.new(2015, 4, 17, hour_event.hour).strftime('%l%P').strip
      @busiest_hour_visits = hour_event.visits
    end
  end
end
