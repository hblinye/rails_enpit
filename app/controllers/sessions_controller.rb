class SessionsController < ApplicationController
  def new
  end

  def login
    name = params[:session][:name]
    password = params[:session][:password]
    user = User.find_by({name: name, password: password})
    if user
      log_in user
      redirect_to tweets_url
    else
      render "new"
    end
  end
end
