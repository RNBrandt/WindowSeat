module FlightsHelper

  def automatic_checkin(flight_object)
    page = Mechanize.new.get "https://www.southwest.com/"
    form = page.form_with(:name => "homepage-booking-form-check-in")
    form['confirmationNumber'] = flight_object.confirmation_number
    form['firstName'] = flight_object.user.first_name
    form['lastName'] = flight_object.user.last_name
    form.submit
    # flight_object.checked_in_at = Time.zone.now
  end

  def flight_lookup(flight_id)
    Flight.find(flight_id)
  end
end
