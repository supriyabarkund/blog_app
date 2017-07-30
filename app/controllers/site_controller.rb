class SiteController < ApplicationController
  layout 'site'

  def index
  end

  def blog
  	@siteblog = Siteblog.where(:status => true)
  end

  def blog_detail
  	@siteblog = Siteblog.find(params[:id])
  end

end
