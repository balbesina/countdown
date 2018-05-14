# frozen_string_literal: true

class Party < ApplicationRecord
  has_one_attached :image

  validates :title, :at, presence: true

  class << self
    def next
      order(:at).find_by('at > ?', Time.now)
    end
  end
end
