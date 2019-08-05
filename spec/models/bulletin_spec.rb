require 'rails_helper'

RSpec.describe Bulletin, type: :model do
  let(:bulletin) { Bulletin.create!(title: "New Bulletin Title", body: "New Bulletin Body") }

     describe "attributes" do
     it "has title and body attributes" do
       expect(bulletin).to have_attributes(title: "New Bulletin Title", body: "New Bulletin Body")
     end
   end

end
