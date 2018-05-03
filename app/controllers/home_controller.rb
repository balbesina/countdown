# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @party = Party.next
    return unless @party

    @social_meta = {
      host: request.host,
      title: @party.title,
      description: @party.description
    }
  end
end
