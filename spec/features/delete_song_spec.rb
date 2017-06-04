require 'rails_helper'

describe "Deleting a song" do
  let!(:artist) { create :artist }
  let!(:song) { create :song, name: "Lala", album: "Lala", release_date: "2017", artist: artist }

  it "adds a new song to the artist" do
    visit artist_path(artist)

    click_button "Save"

    expect(page).to have_text("Lala")
  end
  
  it "deletes a song from the artist show page" do
    visit artist_path(artist)

    click_on class:"glyphicon-trash"

    expect(page).not_to have_text("Lala")
  end
end
