# frozen_string_literal: true

module ApplicationHelper
  # All methods defined here can be used in views.

  def wiki(name, delisp: true)
    haml_tag(:a, href: "https://en.m.wikipedia.org/wiki/#{name.gsub(' ', '_')}") do
      name.sub!(/\s+\(.+\)/, "") if delisp

      haml_concat name
    end
  end
end
