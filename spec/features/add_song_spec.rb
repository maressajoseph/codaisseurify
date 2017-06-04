require 'rails_helper'

describe "Adding a new song" do
  let!(:artist) { create :artist }
  let!(:song) { create :song, name: "Lala", album: "Lala", release_date: "2017", artist: artist }

  it "adds a new song to the artist" do
    visit artist_path(artist)

    click_button "Save"

    expect(page).to have_text("Lala")
  end
end


# require 'rails_helper'
#
# feature 'Add a new song', js: true do
#
#   scenario 'Add a new song' do
#     visit artist_path(artist.id)
#
#     fill_in 'name', with: 'Lala'
#     fill_in 'album', with: 'Lala'
#     fill_in 'release_date', with: '2017'
#
#     page.execute_script("$('form').submit()")
#
#     expect(page).to have_content('Lala')
#   end
# end
