class ContactsController < ApplicationController
  def index
    @contacts = Contact.order(name: :asc)
  end

  def new
  end

  def create
  name = params[:contact][:name]
  address = params[:contact][:address]
  phone_number = params[:contact][:phone_number]
  email_address = params[:contact][:email_address]
  email_validity = email_address =~ /.+@+.*\.[a-z]{2,}/i



    if name.blank? || address.blank? || email_validity.nil?
      redirect_to('/contacts/new')

    else
      contact = Contact.new(
      :name => name,
      :address => address,
      :phone_number => phone_number,
      :email_address => email_address)

      contact.save

      redirect_to('/contacts')
    end

  end

  def show
    @name = params[:name]
    @contacts = Contact.all
    @contact = @contacts.detect{|contact| contact.name == @name}
  end

end
