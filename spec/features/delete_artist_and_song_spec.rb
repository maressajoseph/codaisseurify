require 'rails_helper'

describe "Deleting artist and all songs" do
  let!(:artist) { create :artist }

  it "deletes an artist and all the songs from that artist and go back to the artist index page" do
    visit artist_path(artist)

    click_on "Delete this artist and all its songs"

    expect(current_path).to eq(artists_path)
  end

  it "deletes an artist and all the songs from that artist" do
    visit artist_path(artist)

    click_on "Delete this artist and all its songs"

    expect(page).to have_text("Artist and all the songs of that artist have been deleted")
  end
end
