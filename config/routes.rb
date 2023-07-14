Rails.application.routes.draw do
  constraints subdomain: 'admin' do
    scope module: 'admin', as: 'admin' do
      # Routes for the admin functionality
      root 'dashboard#index'
    end
  end

  # Routes for the tutor functionality
  root 'tutor_dashboard#index'
end
