require 'rails_helper'

RSpec.describe WordsController, type: :controller do
  describe "GET index" do
    context 'when some words present'
      it "assigns @words" do
        word = Word.create
        get :index
        expect(assigns(:words)).to eq([word])
      end
    

    context 'when no words'
      it "assigns @words" do
        get :index
        expect(assigns(:words)).to eq([])
      end
    

    it "renders the index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end
end