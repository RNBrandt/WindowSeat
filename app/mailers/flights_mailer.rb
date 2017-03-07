class FlightsMailer < ApplicationMailer
  default from: 'once_i_get_my_email@email.com'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to WindowSeat.club')
  end

  def checked_in(flight)
    @flight = flight
    @user = flight.user
    mail(to: @user.email, subject: 'WindowSeat.club has checked you into your flight')
  end

  def new_flight_email(flight)
    @fligth = flight
    @user = flight.user
    mail(to: @user.email, subject: 'WindowSeat.club will check you into your flight')
end
