class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index         # GET /restaurants
    @contacts = Contact.all
  end

  def show          # GET /restaurants/:id

  end

  def new           # GET /restaurants/new
    @contact = Contact.new
    @states = State.all
  end

  def create       # POST /restaurants
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contact_path(params[:id])
    else
      render :new
    end
  end

  def edit          # GET /restaurants/:id/edit

  end


  def update        # PATCH /restaurants/:id
    @contact.update(contact_params)
    redirect_to contact_path(@contact)
  end

  def destroy       # DELETE /restaurants/:id

    @contact.destroy

    # no need for app/views/contacts/destroy.html.erb
    redirect_to contacts_path
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :number, :first_name, :last_name, :address, :user_id, :state_id)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end
