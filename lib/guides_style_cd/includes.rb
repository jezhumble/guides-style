# @author Mike Bland (michael.bland@gsa.gov)

require 'jekyll/tags/include'
require 'liquid'

module GuidesStyleCD
  class IncludeTag < ::Jekyll::Tags::IncludeTag
    ::Liquid::Template.register_tag 'guides_style_18f_include', self

    def initialize(_tag_name, _name, _tokens)
      super
      @includes_dir = File.join File.dirname(__FILE__), 'includes'
    end

    def tag_includes_dir(*_context)
      includes_dir
    end

    def resolved_includes_dir(_context)
      includes_dir
    end
  end
end
