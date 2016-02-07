# @author Mike Bland (michael.bland@gsa.gov)

module GuidesStyleCD
  def self.update_theme
    exec({ 'RUBYOPT' => nil }, 'bundle', *%w(update --source guides_style_18f))
  end
end
