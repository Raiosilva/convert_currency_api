Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      root 'exchanges#index'
      get 'convert', to: 'exchanges#convert'
    end
  end
end
