# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Vocabulary.create(word: 'Phone', mean1: 'cục sạc pin', mean2: 'điện thoại', mean3: 'bút bi', mean4:'máy tính', mean: 'điện thoại', group_id: 1)
Vocabulary.create(word: 'Teacher', mean1: 'học sinh', mean2: 'công chức', mean3: 'bác sĩ', mean4:'cô gíao, thầy gíao', mean: 'cô gíao, thầy gíao', group_id: 1)
Vocabulary.create(word: 'Cat', mean1: 'con mèo', mean2: 'con chó', mean3: 'bút bi', mean4:'cái bàn', mean: 'con mèo', group_id: 1)
Group.create(id: 1, name: "Từ vựng sơ cấp")
Group.create(id: 2, name: "Từ vựng trung cấp")
