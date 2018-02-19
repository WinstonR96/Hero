Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :personajes do 
        get 'delete' => 'personajes#delete'
      end
      get 'data_get' => 'personajes#delete'
    end
  end
end
