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

  def text_reminder(phone_number)
    @twilio_number = ENV['TWILIO_NUMBER']
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
    message = @client.account.messages.create(
      from: @twilio_number,
      to: self.user.phone_number,
      body: "OverheadStorage has checked you into your flight tomorrow.
      You will still need to go on-line or visit a kiosk for your boarding documents."
      )
  end

  def flight_lookup(flight_id)
    Flight.find(flight_id)
  end

  # handle_asynchronously
end
