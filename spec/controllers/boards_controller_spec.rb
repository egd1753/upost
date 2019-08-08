require 'rails_helper'

RSpec.describe BoardsController, type: :controller do
  let(:my_board) { Board.create!(title: "My Board Title") }

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: my_board.id }
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, params: { id: my_board.id }
      expect(response).to render_template :show
    end

    it "assigns my_board to @board" do
      get :show, params: { id: my_board.id }
      expect(assigns(:board)).to eq(my_board)
    end
  end

end
