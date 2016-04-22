class ContactsController < ApplicationController


    def index
      @contacts = Contact.order(created_at: :asc)

    end


  def new


  end

  def create
    #making new instance of contact
    contact = Contact.new(
    :name => params[:contact][:name],
    :address => params[:contact][:address],
    :phone => params[:contact][:phone],
    :email => params[:contact][:email] )
    contact.save

    redirect_to("/index")
  end

  def show
    id = params[:id]
    @reqcontact = Contact.find_by(id: id )
  end
end
