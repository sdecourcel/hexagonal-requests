class RequestsController < ApplicationController

  def new
    @request = Request.new
  end

  def create
  end

  def update_status_confirmed
  end

  def email_to_confirm
  end

  def email_confirmed
  end
end
