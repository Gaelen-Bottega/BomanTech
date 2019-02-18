module SeoKeywords
  extend ActiveSupport::Concern

  included do 
    before_action :seo_keywords
  end

  def seo_keywords
    @seo_keywords = "Boman Technologies, 
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
                    Boman,
                    Bowman Technologies,
                    Boman Technology,
                    Machine Shop,
                    Milford,
                    Connecticut,
                    Miyano,
                    Miyano Engineering,
                    Drilling,
                    Drilling Parts"
  end
end