module SetPageDefaultContents
  extend ActiveSupport::Concern
    included  do
      before_action :set_page_defaults
    end
  def set_page_defaults
    @page_title = "Hamze Ahmed"
  end
end
