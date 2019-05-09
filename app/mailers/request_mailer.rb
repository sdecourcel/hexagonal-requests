class RequestMailer < ApplicationMailer

  def email_to_confirm(request)
    @request = request
    mail(
      from: Mail::Address.new("cowork@gmail.com"),
      to: request.email,
      subject: 'Veuillez confirmer votre email'
    )
  end
  
end
