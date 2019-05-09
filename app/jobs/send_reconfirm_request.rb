class SendReconfirmRequest < ApplicationJob
  queue_as :mailers

  def perform
    requests_to_confirm = Request
                            .confirmed
                            .where("created_at > ? and created_at < ?",
                              (Time.current - 3.months).beginning_of_day,
                              (Time.current - 3.months).end_of_day)
    requests_to_confirm.each do |request|
      position = Request
                  .confirmed
                  .order(:created_at)
                  .find_index { |r| r.email == request.email}
      position += 1
      request.expired!
      RequestMailer.request_to_reconfirm(request, position).deliver_now
    end
  end
end
