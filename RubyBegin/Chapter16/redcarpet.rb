#standart lib
#gem install redcarpet

require 'redcarpet'

markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
puts markdown.render(markdown_text)