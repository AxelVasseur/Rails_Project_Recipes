# gem install json


require 'json'

def read_recipes
    fileParse = []
    raw_data = File.readlines('recipes.json')
    (0..1000).step(1) do |n|
        fileParse.append(JSON.parse(raw_data[n]))
    end

    return fileParse
end