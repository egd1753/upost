require 'rails_helper'

RSpec.describe Board, type: :model do
  let(:board) { Board.create!(title: "New Board Title") }

  describe "attributes" do
    it "has title attribute" do
      expect(board).to have_attributes(title: "New Board Title")
    end
  end

  
end
