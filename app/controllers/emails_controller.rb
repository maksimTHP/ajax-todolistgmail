class EmailsController < ApplicationController
before_action :authenticate_user!
  def index
    @mails = Email.all
  end

  def show
    @show_email = Email.find(params[:id])
  end

  def new
  end

  def create

    @new_email = Email.create(object: Faker::Artist.name, body: Faker::Lorem.sentence)

    if @new_email.save
      puts "Tu as reçu un email."
      flash[:notice] = "Tu as reçu un email."
      redirect_to emails_index_path
    end

    respond_to do |format|
      format.html do
        #code en cas de requête classique
      end

      format.js do
        #code en cas de requête AJAX
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
