Rails.application.routes.draw do

  get '/', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact', as: 'contact'
  get '/about', to: 'static_pages#about', as: 'about'
  get '/about/me', to: 'static_pages#about_me', as: 'about_me'
  get '/about/mon_groupe', to: 'static_pages#about_mon_groupe', as: 'about_group'
  get '/new', to: 'users#new', as: 'new_user'
  post'/new', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

end


#Pour chaque route on définit un path qui va nous permettre d'utiliser cette route plus facilement ailleurs
