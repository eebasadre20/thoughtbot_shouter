Shouter::Application.routes.draw do
#constraint for root page, before the default one, can be used instead of before filter
#if the default root should be accessible by signed in users, rather redirect after sign in
#constraints don't show up in rake routes
constraints Clearance::Constraints::SignedIn.new do
  root to: 'dashboards#show'
end


root to: "homes#show"

#7 routs with an id
# resources :dashboard

#no index (6 routes) action and no id, so need some means to identify
resource :dashboard, only: [:show]
resources :text_shouts, only: [:create]
resources :photo_shouts, only: [:create]
resources :users, only: [:show]

post "users/:user_id/follow" => "following_relationships#create", as: :follow_user

#vanity routes
#but clean up afterwards duplicate routes to teh same resource
#get "dashboard" => "dashboards#show"

end
