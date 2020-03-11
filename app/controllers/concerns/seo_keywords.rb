module SeoKeywords
  extend ActiveSupport::Concern

  included do 
    before_action :seo_keywords
  end

  def seo_keywords
    @seo_keywords = "Boman Technologies,
                    Boman,
                    Bowman Technologies,
                    Bowman, 
                    Boman Technology,
                    Contact Boman,
                    Engineering, 
                    Precision, 
                    Metal, 
                    Machining, 
                    Machine, 
                    Precision-made, 
                    USA made, 
                    American Made, 
                    Engineers, 
                    Mandrel,
                    Machine Shop,
                    Milford,
                    Connecticut,
                    Miyano,
                    Miyano Engineering,
                    Drilling,
                    Drilling Parts,
                    Quality"
  end
end