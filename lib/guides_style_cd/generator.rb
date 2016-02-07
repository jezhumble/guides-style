# @author Mike Bland (michael.bland@gsa.gov)

require 'jekyll'

module GuidesStyleCD
  class Generator < ::Jekyll::Generator
    def generate(site)
      Layouts.register site
      Assets.copy_to_site site
    end
  end
end
