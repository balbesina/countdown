# frozen_string_literal: true

class Admin < User
  def confirmed?
    true
  end
end
