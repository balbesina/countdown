# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_secure_token

  validates :email, uniqueness: true, length: { minimum: 5 }, format: /@/
  validates :password, length: { minimum: 6 }, if: :password_digest_changed?

  def name
    read_attribute(:name) || email
  end

  def name=(value)
    write_attribute(:name, value.strip.gsub(/\s\s+/, ' '))
  end

  def confirmed?
    confirmed_at.present?
  end
end
