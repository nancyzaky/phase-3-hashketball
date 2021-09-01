# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def return_hash game_hash
  game_hash
end


def num_points_scored (name)
  score = nil
   newarr = return_hash(game_hash)
   newarr.each do |item, values|
     values[:players].each do |items|
      if items[:player_name] == name
        # puts items[:player_name]
        # puts items[:points]
        score = items[:points]
      end
     end


 end

score


end
def shoe_size(name)
  size = nil
  newarr = return_hash(game_hash)
  newarr.each do |item, values|
    values[:players].each do |items|
      if items[:player_name] == name
        size = items[:shoe]
      end
    end
  end
size
end

def team_colors(name)
colors = nil
newarr = return_hash(game_hash)
newarr.each do |item, value|
  if value[:team_name] == name
    colors = value[:colors]
  end
end
colors
end

# def team_names
# team_arr=[]

# newarr = return_hash(game_hash)
# newarr.each do |item, value|
#   value[:players].each do |val|
#          val.each do |per, vals|
#           puts per,vals
#           if per == :player_name
#             team_arr<<vals
#          end


#   end
# end

# end
# end
def team_names
team_arr=[]

newarr = return_hash(game_hash)
newarr.each do |item, value|
  value.each do |items, vals|
   if items == :team_name

    team_arr<< vals
  end
end

end
team_arr
end


def player_numbers(name)
  team_nums = []
newarr = return_hash(game_hash)
   newarr.each do |item, values|
   if values[:team_name] == name
    values[:players].each do |person|
      person.each do |items, val|
        if items == :number
          team_nums<<val

        end
      end
    end
  end
   end
team_nums
end

def player_stats(name)
newarr = return_hash(game_hash)
result = nil
newarr.each do |item, values|
  values[:players].each do |player|
  if player[:player_name] == name
    result = player

  end

end
end
result
end


def big_shoe_rebounds
  biggest_shoes = 0
  player_result = nil
newarr = return_hash(game_hash)
newarr.each do |item, value|
  value[:players].each do |player|
   if player[:shoe] > biggest_shoes
    biggest_shoes = player[:shoe]
    player_result = player[:rebounds]

   end
  end
end
player_result
end

def most_points_scored
newarr = return_hash(game_hash)
highest_player = ""
highest_score = 0
newarr.each do |item, value|
  value[:players].each do |player|
   if player[:points] > highest_score
    highest_score = player[:points]
    highest_player  = player[:player_name]
   end
  end
  end
 return highest_player
end


def winning_team
newarr = return_hash(game_hash)
score = 0
winner = nil
newarr.each do |item, value|
  tot = 0
value[:players].each do |player|
  tot += num_points_scored (player[:player_name])
  if tot > score
    score = tot
    puts score
     winner = value[:team_name]
    puts winner

end
end
end
end


def player_with_longest_name
val = 0
player = ""
newarr = return_hash(game_hash)
   newarr.each do |item, values|
     values[:players].each do |items|
     if items[:player_name].length > val
      val = items[:player_name].length
      player = items[:player_name]
     end
    end
  end
    puts player
end

def long_name_steals_a_ton
val = 0
player = ""
steal = 0
newarr = return_hash(game_hash)
   newarr.each do |item, values|
     values[:players].each do |items|
     if items[:player_name].length > val && items[:steals] > steal
      val = items[:player_name].length
      steal = items[:steals]
      player = items[:player_name]
     end
    end
  end

    puts player
    puts steal
end

long_name_steals_a_ton