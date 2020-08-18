# frozen_string_literal: true

#:nodoc:
class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.dig(:email, :from_mail)

  layout 'mailer'
end
