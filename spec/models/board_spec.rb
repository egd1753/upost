require 'rails_helper'

RSpec.describe Board, type: :model do
  let(:title) { "New Board Title" }
  let(:board) { Board.create!(title: title) }

  it { is_expected.to have_many(:bulletins) }

  describe "attributes" do
    it "has title attribute" do
      expect(board).to have_attributes(title: title)
    end
  end


end
