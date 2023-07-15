Rails.application.routes.draw do
  devise_for :tutors, controllers: {
    sessions: 'tutor/sessions',
    passwords: 'tutors/passwords'
  }

  constraints subdomain: 'admin' do
    scope module: 'admin', as: 'admin' do
      # Routes for the admin functionality
      root 'dashboard#index'
    end
  end

  devise_scope :tutor do
    # Routes for the tutor functionality
    root to: 'tutor/sessions#new'
  end

  get "apply", to: "pages#apply"
  get 'dashboard', to: 'tutor_dashboard#index', as: 'tutor_dashboard'
end
