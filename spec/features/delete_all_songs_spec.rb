require 'rails_helper'

describe "Deleting all songs" do
  let!(:artist) { create :artist }

  it "deletes all songs from the artist show page" do
    visit artist_path(artist)

    click_on "Delete all songs from this artist"

    expect(page).to have_text("Songs have been deleted")
  end
end
