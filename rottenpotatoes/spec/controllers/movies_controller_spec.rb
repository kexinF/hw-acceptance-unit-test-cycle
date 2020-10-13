require 'rails_helper'
 describe MoviesController do
     
  describe 'create' do
    it 'creates a new movie' do
      expect {post :create, movie: {title: 'Star Wars', director: 'George Lucas'}}.to change { Movie.count }.by(1)
    end
     it 'redirects to the index page' do
      post :create, movie: {title: 'Star Wars', director: 'George Lucas'}
      expect(response).to redirect_to(movies_url)
    end
  end
  
  describe 'destroy' do
    let!(:movie1) { Movie.create(title: 'Star Wars', director: 'George Lucas') }
     it 'destroys a movie' do
      expect { delete :destroy, id: movie1.id}.to change(Movie, :count).by(-1)
    end
     it 'redirect after destroy' do
      delete :destroy, id: movie1.id
      expect(response).to redirect_to(movies_path)
    end
  end
  
end