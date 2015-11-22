# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Family.delete_all
Family.create([
  {name: "Ted & Laurel", identifier: "T&L"},
  {name: "Mary & Mike", identifier: "M&M"},
  {name: "Grandma/Mom Pardee", identifier: "R&A"},
  {name: "Tim & Jen", identifier: "T&J"}
  ])  
