module CustomTabNames
  extend ActiveSupport::Concern

  included do 
    before_action :default_title
  end

  def default_title
    @page_title = "Boman Technologies | Home"
  end
end