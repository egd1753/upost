require 'rails_helper'

RSpec.describe BulletinsController, type: :controller do
  let(:my_bulletin) { Bulletin.create!(title: "My Bulletin Title", body: "My Bulletin Body") }

#  describe "GET #index" do
#    it "returns http success" do
#      get :index
#      expect(response).to have_http_status(:success)
#    end
#  end


#  describe "GET #show" do
#    it "returns http success" do
#      get :show
#      expect(response).to have_http_status(:success)
#    end
#  end


  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end

    it "instantiates @bulletin" do
      get :new
      expect(assigns(:bulletin)).not_to be_nil
    end
  end


  describe "BULLETIN create" do
    it "increases the number of Bulletin by 1" do
      expect{ post :create, params: { bulletin: { title: "My Bulletin Title", body: "My Bulletin Body" } } }.to change(Bulletin,:count).by(1)
    end

    it "assigns the new bulletin to @bulletin" do
      post :create, params: { bulletin: { title: "My Bulletin Title", body: "My Bulletin Body"} }
      expect(assigns(:bulletin)).to eq Bulletin.last
    end

    it "redirects to the bulletin board" do
      post :create, params: { bulletin: { title: "My Bulletin Title", body: "My Bulletin Body"} }
      expect(response).to redirect_to :root
    end
  end


#  describe "GET #edit" do
#    it "returns http success" do
#      get :edit
#      expect(response).to have_http_status(:success)
#    end
#  end


end
