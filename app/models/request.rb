class Request < ApplicationRecord

  enum status: { unconfirmed: 0, confirmed: 1, accepted: 2, expired: 3}

  validates :email, presence: true


  # scope :unconfirmed, -> { where(status: "unconfirmed") }
  # scope :confirmed, -> { where(status: "confirmed") }
  # scope :accepted, -> { where(status: "accepted") }
  # scope :expired, -> { where(status: "expired") }

  def accept!
    accepted!
    # update(status: "accepted")
  end

  private



  def asked_cannot_be_greater_than_price
    errors.add(:price, "Le montant total ne peut être inférieur au total déjà demandé au destinataire.") if (price_cents && asked_cents && (asked_cents > price_cents))
  end

end
