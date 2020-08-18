# frozen_string_literal: true

#:nodoc:
class AdminUser < ApplicationRecord
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end
