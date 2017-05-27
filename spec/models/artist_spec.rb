require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end

  describe "association with song" do
  let(:artist) { create :artist }
  let!(:song) { create :song, artist: artist}

    it "has many songs" do
      lala = artist.songs.new
      lulu = artist.songs.new

      expect(artist.songs).to include(lala)
      expect(artist.songs).to include(lulu)
    end
  end
end
