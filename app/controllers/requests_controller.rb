class RequestsController < ApplicationController

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save && RequestMailer.email_to_confirm(@request).deliver_later
      redirect_to email_to_confirm_path
    else
      render :new
    end
  end

  def update_status_confirmed
    Request.find(params[:id]).update(status: "confirmed")
  end



  private

  def request_params
    params.require(:request).permit(:email, :name, :phone, :biography)
  end
end
