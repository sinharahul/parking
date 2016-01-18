json.array!(@car_registrations) do |car_registration|
  json.extract! car_registration, :id, :owner, :license, :month
  json.url car_registration_url(car_registration, format: :json)
end
