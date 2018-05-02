# frozen_string_literal: true

class Party < ApplicationRecord
  validates :title, :at, presence: true

  class << self
    def next
      find_by('at > ?', Time.now)
    end
  end
end
