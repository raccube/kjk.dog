# frozen_string_literal: true

module ApplicationHelper
  # All methods defined here can be used in views.

  def wiki(name)
    haml_tag(:a, href: "https://en.wikipedia.org/wiki/#{name.gsub(' ', '_')}") do
      haml_concat name
    end
  end
end
