Rails.application.routes.draw do
  resources :siteblogs
  get 'site/index'
 root 'site#index'

 get '/overview', :to => 'site#overview'
 get 'floorplan', :to => 'site#floorplan'
 get 'testimonial', :to => 'site#testimonial'
 get '/blog', :to => 'site#blog'
 get '/blog/:id', :to => 'site#blog_detail'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

