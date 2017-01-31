module FlightsHelper

  def automatic_checkin(flight_object)
    southwest = "https://www.southwest.com/"
    page = Mechanize.new.get southwest
    form = page.form_with(:name => "homepage-booking-form-check-in")
    form['confirmationNumber'] =
    form['firstName'] =
    form['lastName'] =
    form.submit
    #do all the stuff to checkin online
  end

  def text_reminder(flight_object, body)
    @twilio_number = ENV['TWILIO_NUMBER']
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
    message = "this will change depending on success or failure"
    time_string = ((self.checkin_time).localtime).strftime("%I:%M%p on %b. %d, %Y")
    message = @client.account.messages.create(
      from: @twilio_number,
      to: self.user.phone_number,
      body: body
      )
  end

  # handle_asynchronously
end
