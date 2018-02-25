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

matches = Match.create([
    {league_id: 1, player_1: 1, player_2: 2, player1_goals: 2, player2_goals: 2},
    {league_id: 2, player_1: 3, player_2: 4, player1_goals: 0, player2_goals: 3},
    {league_id: leagues[0].id, player_1: players[0].id, player_2: players[1].id, player1_goals: 2, player2_goals: 2},
    {league_id: leagues[0].id, player_1: players[1].id, player_2: players[0].id, player1_goals: 0, player2_goals: 3},

    {league_id: leagues[1].id, player_1: players[2].id, player_2: players[3].id, player1_goals: 21, player2_goals: 0},

    {league_id: leagues[2].id, player_1: players[1].id, player_2: players[3].id, player1_goals: 1, player2_goals: 1},

    {league_id: leagues[3].id, player_1: players[0].id, player_2: players[3].id, player1_goals: 2, player2_goals: 3},
    {league_id: leagues[3].id, player_1: players[0].id, player_2: players[3].id, player1_goals: 2, player2_goals: 4},
    {league_id: leagues[3].id, player_1: players[3].id, player_2: players[1].id, player1_goals: 5, player2_goals: 1},
    {league_id: leagues[3].id, player_1: players[3].id, player_2: players[2].id, player1_goals: 4, player2_goals: 6},
    {league_id: leagues[3].id, player_1: players[2].id, player_2: players[1].id, player1_goals: 0, player2_goals: 7},
    {league_id: leagues[3].id, player_1: players[2].id, player_2: players[3].id, player1_goals: 6, player2_goals: 4},
                       ])



