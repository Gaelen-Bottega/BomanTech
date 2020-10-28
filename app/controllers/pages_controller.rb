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

  def CncMachining
    @page_title = "Boman | CNC Machining"
  end

  def ProductionEquipment
    @page_title = "Boman | Production Equipment"
  end
end
