require 'rails_helper'

RSpec.describe Bulletin, type: :model do
  let(:title) { "New Bulletin Title" }
  let(:body) { "New bulletin body" }
  let(:board) { Board.create!(title: "New Board") }
  let(:bulletin) { board.bulletins.create!(title: title, body: body, board: board) }

  it { is_expected.to belong_to(:board) }

  describe "attributes" do
     it "has title, body, and board attributes" do
       expect(bulletin).to have_attributes(title: title, body: body)
     end
   end

end
