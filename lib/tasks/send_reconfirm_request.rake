namespace :reconfirm_request do
  desc 'Send mails to reconfirm request'
  task send_reconfirm_request: :environment do
    SendReconfirmRequest.perform_later
  end
end
