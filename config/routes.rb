Rails.application.routes.draw do
<<<<<<< HEAD
=======
  devise_for :tutors
>>>>>>> devise
  constraints subdomain: 'admin' do
    scope module: 'admin', as: 'admin' do
      # Routes for the admin functionality
      root 'dashboard#index'
    end
  end

  # Routes for the tutor functionality
  root 'tutor_dashboard#index'
<<<<<<< HEAD
=======

  get "apply", to: "pages#apply"
>>>>>>> devise
end
