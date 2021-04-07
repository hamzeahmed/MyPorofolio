class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include CurrentUserConcern
  include SetPageDefaultContents
  before_action :set_copyright

  def set_copyright
    @copyright = HamzeViewTool::Renderer.copyright 'Hamze Ahmed', 'All right reserved'
  end
end

module HamzeViewTool
  class Renderer
    def self.copyright name,msg
      "&copy; #{Time.now.year} | #{name} | #{msg}".html_safe
    end
  end
end
