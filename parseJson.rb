# gem install json


require 'json'

raw_data = File.read('recipes.json')
fileParse = JSON.parse(raw_data)
#rate
rate = fileParse[0]['rate']

#budget
budget = fileParse[0]['budget']

#prep_time
prep_time = fileParse[0]['prep_time']

#ingredients
ingredients = fileParse[0]['ingredients']

#author
author = fileParse[0]['author']

#name
name = fileParse[0]['name']

#difficulty
difficulty = fileParse[0]['difficulty']

#people_quantity
people_quantity = fileParse[0]['people_quantity']

#cook_time
cook_time = fileParse[0]['cook_time']

#tags
tags = fileParse[0]['tags']

#total_time
total_time = fileParse[0]['total_time']

#image
image = fileParse[0]['image']
#input ingredient
fridgeInput = 'tomate'
for row in fileParse
    for rowIngredient in fileParse[row]['ingredients']
        if /fridgeInput/ =~ rowIngredient
            puts row
        end
    end
end