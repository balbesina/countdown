# frozen_string_literal: true

class Member < User
  def confirm!
    Member.transaction do
      self.confirmed_at = Time.now
      regenerate_token
    end
  end
end
