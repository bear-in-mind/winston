# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Song.destroy_all
SongAttribute.destroy_all
Cell.destroy_all

ben = User.create(email: "ben@gottini.fr", username: "Ben", password: "password", password_confirmation: "password")
show = Show.create(user: ben, artist: "Charlie Winston", year: 2023, title: "As I am")
songs = ["This storm too shall pass", "Limbo", "Hobo", "In Your Hands", "I love your smile", "The Weekend", "The Great Conversation", "Until You're Satisfied", "A Light (Night)"]
songs.each do |song|
  Song.create(title: song, show: show)
end
song_attributes = ["length", "tempo", "key"]
song_attributes.each do |song_attribute|
  SongAttribute.create(title: song_attribute, show: show)
end
lengths = ["3:45", "2:49", "8:00", "4:59", "4:30"]
tempos = (75..135).to_a
keys = ("A".."G").to_a
songs.each do |song|
  SongAttribute.find_by(title: "length").cells.create(content: lengths.sample, song: song)
  SongAttribute.find_by(title: "tempo").cells.create(content: tempos.sample, song: song)
  SongAttribute.find_by(title: "key").cells.create(content: keys.sample, song: song)
end
