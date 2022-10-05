# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create!([
                      { username: 'Mr. Robot', password: '123456', password_confirmation: '123456' },
                      { username: 'Rick Sanchez', password: '123456', password_confirmation: '123456' },
                      { username: 'Walter White', password: '123456', password_confirmation: '123456' },
                      { username: 'Arthur Dent', password: '123456', password_confirmation: '123456' },
                      { username: 'BoJack', password: '123456', password_confirmation: '123456' },
                      { username: 'Gandalf', password: '123456', password_confirmation: '123456' }
                    ])

users.first.created_events.create!(name: 'Taking down E-Corp', description: "Taking down the world\'s largest conglomerate", date: '9-5-2015', location: 'Fun Society Arcade')

users[1].created_events.create!(name: 'Battle of Blood Ridge', description: 'Fighting the Galatic Federation', date: '26-09-2030', location: 'Glapflap')

users[2].created_events.create!(name: 'Return to Albuquerque', description: 'My last visit to Albuquerque, tending to unfinished business', date: '29-09-2013', location: 'Albuquerque, New Mexico')

users[3].created_events.create!(name: 'Answer to Life, Universe and Everything', description: 'Waiting for the ultimate question of Life, Universe, and Everything', date: '28-11-2027', location: 'Magrathea')

users[4].created_events.create!(name: 'Going to Rehab', description: 'Going to rehab, to get my life on track and improve as a horse (person?)', date: '14-09-2018', location: 'Pastiches Malibu Rehabilitation Center')

users.last.created_events.create!(name: 'Unexpected Party', description: "Party at Bilbo\'s house, to convince him to join my adventure", date: '21-09-2024', location: 'Bilbo\'s House')
