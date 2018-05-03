# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action -> { @social_meta = {} }
end
