require 'twilio-ruby'

class AlertsController < ApplicationController
  def new
    @alert = Alert.new
  end

  def create
    @alert = Alert.new(alert_params)
    if @alert.save
      send_whatsapp_message(@alert)
      redirect_to new_alert_path, notice: 'Alert was successfully created and message sent.'
    else
      render :new
    end
  end

  private

  def alert_params
    params.require(:alert).permit(:location, :alert_time)
  end

  def send_whatsapp_message(alert)
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    client = Twilio::REST::Client.new(account_sid, auth_token)

    message = client.messages.create(
      body: "Rocket attack alert at #{alert.location} on #{alert.alert_time}",
      from: ENV['TWILIO_WHATSAPP_FROM'],
      to: ENV['WHATSAPP_TO']
    )

    puts message.sid
  end
end
