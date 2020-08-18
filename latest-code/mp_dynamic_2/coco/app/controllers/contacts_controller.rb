# frozen_string_literal: true

#:nodoc:
class ContactsController < ApplicationController
  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new
    respond_to do |format|
      if @contact.save
        format.html { redirect_to new_contact_path, notice => 'contact was successfully created' }
        format.json { render :show, status: :created, location: new_contact_path }
      else
        format.html { redirect_to new_contact_path, alert: @contact.errors.full_messages }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
       end
    end
   end

  def private
    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
  end
end
