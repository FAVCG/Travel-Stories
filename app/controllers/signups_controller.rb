class SignupsController < ApplicationController

  def index
    @signups = Signup.all
  end

  def new
    @signup = Signup.new
  end

  def create
      @signup = Signup.new(signup_params)
    if @signup.save
      redirect_to '/thanks'
    else
      render 'new'
    end
  end

  private
   def signup_params
    params.require(:firstname).permit(:email)
   end
end
