class Request < ApplicationRecord

  enum status: { unconfirmed: 0, confirmed: 1, accepted: 2, expired: 3}

  scope :unconfirmed, -> { where(status: "unconfirmed") }
  scope :confirmed, -> { where(status: "confirmed") }
  scope :accepted, -> { where(status: "accepted") }
  scope :expired, -> { where(status: "expired") }

  def accept!
    update(status: "accepted")
  end

end
