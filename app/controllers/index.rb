get "/" do
  @todays_events = Event.order(:starts_at).select { |event| event.starts_at.strftime("%a, %e %b %Y ") == Date.today.strftime("%a, %e %b %Y ")}
  @event = Event.new

  erb :index
end
