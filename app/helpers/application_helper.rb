# frozen_string_literal: true

module ApplicationHelper
  def render_social_meta(options = {})
    title = options.fetch(:title, 'BelTech Countdown')
    description = options.fetch(:description, 'BelTech party planning app')
    host = 'https://' + options.fetch(:host, 'localhost')

    capture do
      concat(tag(:meta, name: 'title', content: title))
      concat(tag(:meta, name: 'description', content: description))

      concat(tag(:meta, property: 'og:type', content: 'website'))
      concat(tag(:meta, property: 'og:url', content: host))
      concat(tag(:meta, property: 'og:title', content: title))
      concat(tag(:meta, property: 'og:description', content: description))
    end

  end
end