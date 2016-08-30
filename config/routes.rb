Rails.application.routes.draw do
  resources :attendance_lists do
    resources :attendance_items
  end

  root "attendance_lists#index"


end
