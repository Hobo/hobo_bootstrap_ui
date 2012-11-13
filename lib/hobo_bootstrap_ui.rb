module HoboBootstrapUi

  VERSION = File.read(File.expand_path('../../VERSION', __FILE__)).strip
  @@root = Pathname.new File.expand_path('../..', __FILE__)
  def self.root; @@root; end

  EDIT_LINK_BASE = "https://github.com/Hobo/hobo/edit/bootstrap_template/hobo_bootstrap"

  require 'hobo_bootstrap_ui/railtie' if defined?(Rails)

  class Engine < ::Rails::Engine
  end
end
