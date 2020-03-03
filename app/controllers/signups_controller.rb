class SignupsController < ApplicationController

  def index
    @signups = Signup.all
  end

  def new
        @signup = Signup.new
    end
end
