module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
    before_filter :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = "KLP Presentation"
    @seo_keywords = "Krishnan Pontes Portfolio"
  end
  

end