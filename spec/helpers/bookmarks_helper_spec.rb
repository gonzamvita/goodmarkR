require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the BookmarksHelper. For example:
#
# describe BookmarksHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe BookmarksHelper, type: :helper do
  describe 'url_with_protocol' do
    it 'returns a string' do
      expect(helper.url_with_protocol("test1")).to be_a(String)
    end

    it 'returns a protocol string given a blank string' do
      expect(helper.url_with_protocol("")).to eq("http://")
    end

    it 'prepends the protocol to the given string' do
      string = "givenString"
      expect(helper.url_with_protocol(string)).to eq("http://" + string)
    end
  end
end
