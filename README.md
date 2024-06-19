# RocketAlertWhatsApp

RocketAlertWhatsApp is a simple Ruby on Rails application that allows users to create rocket attack alerts and sends a WhatsApp message to a specified number using the Twilio API.

## Features

- Create rocket attack alerts with location and alert time.
- Send a WhatsApp message to notify about the rocket attack alert.

## Prerequisites

- Ruby 3.1.0
- Rails 7.0.4
- SQLite3 (for development)
- Twilio account

## Getting Started

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/RocketAlertWhatsApp.git
   cd RocketAlertWhatsApp

2. Install dependencies:
  bundle install

3. Set up database
  rails db:create
  rails db:migrate

4. Set up Twilio:
  Sign up for a Twilio account and get your Account SID, Auth Token, and a Twilio phone number that can send WhatsApp messages.
  Create a .env file in the root of the project and add your Twilio credentials:
  **TWILIO_ACCOUNT_SID=your_account_sid
TWILIO_AUTH_TOKEN=your_auth_token
TWILIO_WHATSAPP_FROM=whatsapp:+your_twilio_whatsapp_number
WHATSAPP_TO=whatsapp:+recipient_number**

5. Start the rails server
    rails server
   
6. Open your browser and navigate to http://localhost:3000 to see the form for creating a new rocket attack alert.


### Usage
Fill in the form with the location and alert time for the rocket attack alert.
Submit the form to create the alert and send a WhatsApp message.
Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/yourusername/RocketAlertWhatsApp.

### License
The application is available as open source under the terms of the MIT License.

### Acknowledgements
Twilio for providing the API to send WhatsApp messages.
Ruby on Rails for the web application framework.
