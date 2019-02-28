require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
    before (:each) do
        @mock_movie_attributes = {:title => 'Space Balls', :release_date => '24/6/1987', :rating => 'PG'}
        @mock_movie = FactoryBot.create(:movie)
    end

    describe "ADD #create" do
        it "saves the new movie in the database" do
            expect {post :create, movie: @mock_movie_attributes}.to change(Movie, :count).by(1)
        end
        it "assigns the saved movie to @movie" do
            post :create, movie: @mock_movie_attributes
            expect(assigns(:movie).title).to include("Space Balls")
        end
        it "redirects to the new home page" do
            post :create, movie: @mock_movie_attributes
            expect(response).to redirect_to(:action => 'index')
        end
    end

    describe "DELETE #destroy" do
      it "deletes the movie" do
        expect{delete :destroy, id: @mock_movie}.to change(Movie, :count).by(-1)
      end
      it "redirects to the new home page " do
        delete :destroy, id: @mock_movie
        expect(response).to redirect_to(:action => 'index') 
      end
    end
    
end


