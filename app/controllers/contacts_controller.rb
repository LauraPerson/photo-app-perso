class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :new] 


  def new
    @contact = Contact.new
    authorize @contact
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    authorize @contact

    if @contact.deliver
      flash.alert = "Votre message a été envoyé"
      redirect_to root_path
    else
      flash.alert = "Votre message n'a pas pu être envoyé. Vous pouvez contacter Laura à l'adresse laura.martin.person@gmail.com"
      render :new
    end
  end
end
