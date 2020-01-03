module CopyrightGenerator 
  extend ActiveSupport::Concern

  included do 
    before_action :set_copyright
  end
  
  
  def set_copyright
    @copyright = GaelenCopyright::Renderer.copyright "Boman Technologies"
  end
  
  module GaelenCopyright
    class Renderer
      def self.copyright msg
        "&copy; #{Time.now.year} | #{msg}".html_safe
      end
    end
  end
end