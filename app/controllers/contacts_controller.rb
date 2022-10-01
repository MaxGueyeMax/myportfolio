class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:sucess] = 'Message sent! I will get back to you shortly'
    else
      flash[:danger] = 'Invalid email'
    end
    redirect_to root_path
  end
end
