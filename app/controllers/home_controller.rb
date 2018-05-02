# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @party = Party.next
  end
end
