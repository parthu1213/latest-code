# frozen_string_literal: true

#:nodoc:
class ApplicationController < ActionController::Base
  before_action :set_seo

  def set_seo
    @title = 'Static Page Website - Made by Softices Consultancy Pvt Ltd'
    @keyword = ''
    @description = ''
  end
end
