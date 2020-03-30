# frozen_string_literal: true

module ApplicationHelper
  # All methods defined here can be used in views.

  def wiki(name, delisp: true)
    name.sub!(/\s+\(.+\)/, "") if delisp

    haml_tag(:a, href: "https://en.wikipedia.org/wiki/#{name.gsub(' ', '_')}") do
      haml_concat name
    end
  end
end
