class Flight < ApplicationRecord
  validates :flight_number, presence: true
  validates :flight_time, presence: true
  validates :checkin_time, presence: true
  belongs_to :user

  after_create :automatic_checkin

  def automatic_checkin
    #do all the stuff to checkin online
  end

  def text_reminder
    @twilio_number = ENV['TWILIO_NUMBER']
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
    message = "this will change depending on success or failure"
    time_string = ((self.checkin_time).localtime).strftime("%I:%M%p on %b. %d, %Y")
    message = @client.account.messages.create(
      from: @twilio_number,
      to: self.user.phone_number)
      # body: )
  end


end
