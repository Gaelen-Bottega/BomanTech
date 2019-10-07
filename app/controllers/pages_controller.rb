class PagesController < ApplicationController
  def Homepage
  end

  def AboutUs
    @page_title = "Boman | About our Family"
  end

  def CustomServices

  end

  def PrivacyPolicy
    @page_title = "Boman | Privacy Policy"
  end
end
