require "rails_helper"
require "refile/file_double"

RSpec.describe Song, type: :model do
  it "allows attaching an audio file" do
    song = Song.new

    song.audio = Refile::FileDouble.new("dummy", "song.mp3", content_type: "audio/mp3")
    song.save

    expect(song.audio).not_to be_nil
  end

  it "doesn't allow attaching other files" do
    song = Song.new

    song.audio = Refile::FileDouble.new("dummy", "file.txt", content_type: "text/plain")
    song.save

    expect(song.audio).to be_nil
  end
end


RSpec.describe User, type: :model do
  it "allows attaching an image" do
    user = User.new

    user.profile_image = Refile::FileDouble.new("dummy", "logo.png", content_type: "image/png")
    user.save

    expect(user.profile_image_id).not_to be_nil
  end

  it "doesn't allow attaching other files" do
    user = User.new

    user.profile_image = Refile::FileDouble.new("dummy", "file.txt", content_type: "text/plain")
    user.save

    expect(user.profile_image_id).to be_nil
  end
end
