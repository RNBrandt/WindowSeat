class FlightsMailer < ApplicationMailer
  default from: 'no-reply@window-seat.club'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Window-Seat.club')
  end

  def checked_in(flight)
    @flight = flight
    @user = flight.user
    mail(to: @user.email, subject: 'Window-Seat.club has checked you into your flight')
  end

  def new_flight_email(flight)
    @flight = flight
    @user = flight.user
    mail(to: @user.email, subject: 'Window-Seat.club will check you into your flight')
  end
end
