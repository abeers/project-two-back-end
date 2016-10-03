# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end
User.create([
              { email: 'alex@beers.com',
                password: 'alex',
                password_confirmation: 'alex' },
              { email: 'amanda@green.com',
                password: 'amanda',
                password_confirmation: 'amanda' },
              { email: 'orlando@cat.com',
                password: 'meow',
                password_confirmation: 'meow' }
            ])

Recipe.create([
                { name: 'Chili', time: 30, user_id: 1 },
                { name: 'Mashed Potatoes', time: 20, user_id: 2 },
                { name: 'Baby Back Ribs', time: 45, user_id: 3 },
                { name: 'Lasagna', time: 60, user_id: 3 }
              ])

Ingredient.create([
                    { name: 'ground beef',
                      units: 'oz' },
                    { name: 'cheese',
                      units: 'cups' },
                    { name: 'barbecue sauce',
                      units: 'tbsp' },
                    { name: 'pasta',
                      units: 'oz' },
                    { name: 'potatoes',
                      units: 'lbs' }
                  ])

Recipeingredient.create([
                          { quantity: 10, recipe_id: 1, ingredient_id: 1 },
                          { quantity: 15, recipe_id: 4, ingredient_id: 1 },
                          { quantity: 15, recipe_id: 4, ingredient_id: 4 },
                          { quantity: 100, recipe_id: 2, ingredient_id: 5 },
                          { quantity: 50, recipe_id: 3, ingredient_id: 3 },
                          { quantity: 20, recipe_id: 4, ingredient_id: 2 },
                          { quantity: 25, recipe_id: 2, ingredient_id: 2 }
                        ])

Instruction.create([
                     { step: 'Brown ground beef. Season with salt and pepper.',
                       recipe_id: 1 },
                     { step: 'Drain fat from beef.',
                       recipe_id: 1 },
                     { step: 'Add beans, chili powder, and tomato sauce',
                       recipe_id: 1 },
                     { step: 'Simmer on medium heat for 30 minutes.',
                       recipe_id: 1 },
                     { step: 'Brown ground beef. Season with salt and pepper.',
                       recipe_id: 4 },
                     { step: 'Drain fat from beef.',
                       recipe_id: 4 },
                     { step: 'Add tomato sauce.',
                       recipe_id: 4 },
                     { step: 'Boil pasta.',
                       recipe_id: 4 },
                     { step: 'In a rectangular pan, layer sauce, pasta, and
                              cheese for four layers.',
                       recipe_id: 4 },
                     { step: 'Bake for 30 minutes at 350 degrees.',
                       recipe_id: 4 },
                     { step: 'Cut into squares and serve.',
                       recipe_id: 4 }
                   ])
