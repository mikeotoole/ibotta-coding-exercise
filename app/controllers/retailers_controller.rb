class RetailersController < ApplicationController
  def index
    @retailers = Retailer.order(:name)
  end

  def show
    @retailer = Retailer.find(params[:id])

    @events_by_store = @retailer.stores.with_events.pluck(:events_count, :lat, :long)
    @event_stats = @retailer.event_stats
  end
end
