# frozen_string_literal: true

#:nodoc:
class Contact < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2, maximum: 250 }
  validates :email, length: { maximum: 255 },
                    format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :message, presence: true
end
