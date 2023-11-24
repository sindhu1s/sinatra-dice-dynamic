require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get ("/dice/:zebra/:monkey") do
  @num_dice= params.fetch("zebra").to_i
  @num_side= params.fetch("monkey").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@num_side)

    @rolls.push(die)
  end

  erb(:five_four)
end
