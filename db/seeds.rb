# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

players = Player.create([
                            {name: 'Mario', email: 'mario@bros.com'},
                            {name: 'Luigi', email: 'luigi@bros.com'},
                            {name: 'Peter', email: 'peter@gmail.com'},
                            {name: 'Han', email: 'han@solo.sw'}
                         ])
leagues = League.create([
                            {name: 'Warsaw league', description: 'Players from Warsaw office - join us!'},
                            {name: 'Poznan league', description: 'Players from Poznan office - join us!'},
                            {name: 'Poland - best 16', description: 'Best 16 from all polish offices'},
                            {name: 'Playground', description: 'Want to test your new tactics? Do it here!'}
                        ])
memberships = Membership.create([
    {league_id: leagues[0].id, player_id: players[0].id},
    {league_id: leagues[0].id, player_id: players[1].id},
    
    {league_id: leagues[1].id, player_id: players[2].id},
    {league_id: leagues[1].id, player_id: players[3].id},

    {league_id: leagues[2].id, player_id: players[1].id},
    {league_id: leagues[2].id, player_id: players[3].id},

    {league_id: leagues[3].id, player_id: players[0].id},
    {league_id: leagues[3].id, player_id: players[1].id},
    {league_id: leagues[3].id, player_id: players[2].id},
    {league_id: leagues[3].id, player_id: players[3].id},
                                ])




