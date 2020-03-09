class EmailsController < ApplicationController
before_action :authenticate_user!
  def index
    @mails = Email.all
  end

  def show
    @mail = Email.find(params[:id])

    respond_to do |format|
      format.html { redirect_to email_path(@email.id) }
      format.js {}
    end
  end

  def new
  end

  def create

    @mail = Email.create(object: Faker::Artist.name, body: Faker::Lorem.sentence)

    # if @mail.save
    #   puts "Tu as reçu un email."
    #   flash[:notice] = "Tu as reçu un email."


    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
      end
    # end
  end






  def edit
  end

  def update
  end

  def destroy
    @mail = Email.find(params[:id])
    @mail.destroy


    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end

  end
end
