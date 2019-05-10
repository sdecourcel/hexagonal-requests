class Request < ApplicationRecord

  enum status: { unconfirmed: 0, confirmed: 1, accepted: 2, expired: 3}

  validates :email, presence: true
  validates :email, format: { with: /\A.+@.+.+.\z/,
    message: "Veuillez saisir un email valide" }
  validates :phone, presence: true
  validates :phone, format: { with: /\A\d{2}\s*\d{2}\s*\d{2}\s*\d{2}\z/,
      message: "Veuillez saisir un téléphone valide" }


  # unuseful scopes as already existing with enum
  # scope :unconfirmed, -> { where(status: "unconfirmed") }
  # scope :confirmed, -> { where(status: "confirmed") }
  # scope :accepted, -> { where(status: "accepted") }
  # scope :expired, -> { where(status: "expired") }

  def accept!
    accepted!
    # update(status: "accepted")
  end


end
