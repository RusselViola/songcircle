require "rails_helper"
require "refile/file_double"

RSpec.describe Song, type: :model do
  it "allows attaching an audio file" do
    song = Song.new

    song.audio = Refile::FileDouble.new("dummy", "song.mp3", content_type: "audio/mp3")
    song.save

    expect(song.audio_id).not_to be_nil
  end

  it "doesn't allow attaching other files" do
    song = Song.new

    song.audio = Refile::FileDouble.new("dummy", "file.txt", content_type: "text/plain")
    song.save

    expect(song.audio_id).to be_nil
  end
end
