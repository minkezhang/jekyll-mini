# TODO(minkezhang): Replace with modified
# https://github.com/rukbotto/jekyll-absolute-links instead to handle more edge
# cases, e.g. embedded code exceptions.
module Jekyll
  module RelativeLinkFilter
    # Replace relative links e.g. "path/to/x" to "/absolute/path/to/x" in input
    # string.
    def replace_link(input, post_url)
      anchor_re = Regexp.new(/href=('|")(?<anchor>#.*?)('|")/)
      input = input.gsub(anchor_re) { |m| "href=\"%s%s\"" % [post_url, "#{$~[:anchor]}"] }

      # Strip non-pretty root of final *.html part.
      strip_root_url_re = /(?<root>.*\/)(?<tail>.+\.html)/
      root = post_url.gsub(strip_root_url_re) { |m| "#{$~[:root]}"}

      relative_link_re = /(?<attr>href|src)=('|")(?!(http|\/|#))(?<link>.*?)('|")/
      re = Regexp.new(relative_link_re)
      input = input.gsub(re) { |m| "%s=\"%s%s\"" % ["#{$~[:attr]}", root, "#{$~[:link]}"] }

    end
  end
end

Liquid::Template.register_filter(Jekyll::RelativeLinkFilter)
