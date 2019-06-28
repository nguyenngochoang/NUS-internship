Rails.application.routes.draw do
  
    root 'welcome#index'

    resources 'articles' do
       resources 'comments' 
    end
    
    resources 'authors_and_articles' do
        resources 'articles'
        resources 'authors'
    end
  
end
