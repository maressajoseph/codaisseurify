require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }

    it "is invalid without a name" do
      song = Song.new(name: "")
      song.valid?
      expect(song.errors).to have_key(:name)
    end
  end

  describe "association with artist" do
  let(:artist) { create :artist }

    it "belongs to a artist" do
      song = artist.songs.new

      expect(song.artist).to eq(artist)
    end
  end
end
