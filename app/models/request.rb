class Request < ApplicationRecord

  enum status: { unconfirmed: 0, confirmed: 1, accepted: 2, expired: 3}


end
