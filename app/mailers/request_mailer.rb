class RequestMailer < ApplicationMailer

  def email_to_confirm(request)
    @request = request
    mail(
      from: Mail::Address.new("cowork@gmail.com"),
      to: request.email,
      subject: 'Veuillez confirmer votre email'
    )
  end

  def request_to_reconfirm(request, position)
    @request = request
    @position = position
    mail(
      from: Mail::Address.new("cowork@gmail.com"),
      to: request.email,
      subject: "Inscription sur liste d'attente à reconfirmer"
    )
  end

end
