# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# req = Vacuum.new
# req.configure(

#   aws_access_key_id: 'AKIAIYQA6IYPMV7GU32A',
#   aws_secret_access_key: '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',
#   associate_tag: 'sizeright_dbushy727-20'
#   )


b1 = Brand.new(name: "Nike", conversion: 0)
b2 = Brand.new(name: "Adidas", conversion: 0)
b3 = Brand.new(name: "Converse", conversion: -0.5)
b4 = Brand.new(name: "New Balance", conversion: -0.5)
b5 = Brand.new(name: "Puma", conversion: 0.5)
b6 = Brand.new(name: "Reebok", conversion: 0)
b7 = Brand.new(name: "Asics", conversion: 0.5)
b8 = Brand.new(name: "Jordan", conversion: 0)
b9 = Brand.new(name: "Saucony", conversion: -0.5)
b10 = Brand.new(name: "DC", conversion: 0)



b1.save
b2.save
b3.save
b4.save
b5.save
b6.save
b7.save
b8.save
b9.save
b10.save
