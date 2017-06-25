Rails.application.routes.draw do
  get '/' => 'public#index' , as: :index 
  get '/contact' => 'public#contact' , as: :contact 
  get '/course' => 'public#course' , as: :course 
  get '/faq' => 'public#faq' , as: :faq 
  get '/materias' => 'public#materias' , as: :materias 
  get '/materia/:id' => 'public#materia' , as: :materia 
  get '/materia/:id/mensagem' => 'public#materia_mensagem' , as: :materia_mensagem
  post '/materia/enviar_ensagem_materia' => 'public#enviar_ensagem_materia' , as: :enviar_ensagem_materia
  get '/materia/:id/arquivos' => 'public#materia_arquivos' , as: :materia_arquivos
  get '/professores' => 'public#professores' , as: :professores
  get '/habilitacoes' => 'public#habilitacoes' , as: :habilitacoes
  post '/procura_materia/ajax' => 'public#procura_materia' , as: :procura_materia

  devise_for :users
  resources :courses
  resources :grades
  resources :comments
  resources :materials
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'public#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
