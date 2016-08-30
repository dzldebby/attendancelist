Rails.application.routes.draw do
  resources :attendance_lists do
    resources :attendance_items do
      member do
        patch :complete
      end
    end
  end

  root "attendance_lists#index"


end
