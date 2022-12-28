# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
pp 'start seeding'
weapons2 = [
  Weapon.new({ user_view_damage: '1d6', min_damage: 1, max_damage: 6, type_damage: 'дробящий' }),
  Weapon.new({ user_view_damage: '1d4', min_damage: 1, max_damage: 4, type_damage: 'колющий' }),
  Weapon.new({ user_view_damage: '1d4', min_damage: 1, max_damage: 4, type_damage: 'дробящий' }),
  Weapon.new({ user_view_damage: '1d6', min_damage: 1, max_damage: 6, type_damage: 'колющий' }),
  Weapon.new({ user_view_damage: '1d6', min_damage: 1, max_damage: 6, type_damage: 'рубящий' }),
  Weapon.new({ user_view_damage: '1d8', min_damage: 1, max_damage: 8, type_damage: 'колющий' }),
  Weapon.new({ user_view_damage: '1d6', min_damage: 1, max_damage: 6, type_damage: 'колющий' }),
  Weapon.new({ user_view_damage: '1d8', min_damage: 1, max_damage: 8, type_damage: 'рубящий' }),
  Weapon.new({ user_view_damage: '2d6', min_damage: 2, max_damage: 12, type_damage: 'рубящий' }),
  Weapon.new({ user_view_damage: '1d8', min_damage: 1, max_damage: 8, type_damage: 'колющий' }),
  Weapon.new({ user_view_damage: '1d10', min_damage: 1, max_damage: 10, type_damage: 'колющий' })
]

weapons = Weapon.create([
                          { user_view_damage: '1d6', min_damage: 1, max_damage: 6, type_damage: 'дробящий' },
                          { user_view_damage: '1d4', min_damage: 1, max_damage: 4, type_damage: 'колющий' },
                          { user_view_damage: '1d4', min_damage: 1, max_damage: 4, type_damage: 'дробящий' },
                          { user_view_damage: '1d6', min_damage: 1, max_damage: 6, type_damage: 'колющий' },
                          { user_view_damage: '1d6', min_damage: 1, max_damage: 6, type_damage: 'рубящий' },
                          { user_view_damage: '1d8', min_damage: 1, max_damage: 8, type_damage: 'колющий' },
                          { user_view_damage: '1d6', min_damage: 1, max_damage: 6, type_damage: 'колющий' },
                          { user_view_damage: '1d8', min_damage: 1, max_damage: 8, type_damage: 'рубящий' },
                          { user_view_damage: '2d6', min_damage: 2, max_damage: 12, type_damage: 'рубящий' },
                          { user_view_damage: '1d8', min_damage: 1, max_damage: 8, type_damage: 'колющий' },
                          { user_view_damage: '1d10', min_damage: 1, max_damage: 10, type_damage: 'колющий' }
                        ])
weapons.each { |a| a.save }

=begin
weapon_items = WorldInventory.create([
                                       { name: 'Боевой посох', description: 'Универсальное (1к8)', weapon_id: weapons2[0].id },
                                       { name: 'Кинжал', description: 'Лёгкое, метательное (дис. 20/60), фехтовальное', weapon_id: weapons2[1].id },
                                       { name: 'Легкий молот', description: 'Лёгкое, метательное (дис. 20/60)', weapon_id: weapons2[2].id },
                                       { name: 'Метательное копье', description: 'Метательное (дис. 30/120)', weapon_id: weapons2[3].id },
                                       { name: 'Ручной топор', description: 'Лёгкое, метательное (дис. 20/60)', weapon_id: weapons2[4].id },
                                       { name: 'Арбалет, легкий', description: 'Боеприпас (дис. 80/320), двуручное, перезарядка', weapon_id: weapons2[5].id },
                                       { name: 'Короткий лук', description: 'Боеприпас (дис. 80/320), двуручное', weapon_id: weapons2[6].id },
                                       { name: 'Боевой топор', description: 'Универсальное (1к10)', weapon_id: weapons2[7].id },
                                       { name: 'Двуручный меч', description: 'Двуручное, тяжёлое', weapon_id: weapons2[8].id },
                                       { name: 'Рапира', description: 'Фехтовальное', weapon_id: weapons2[9].id },
                                       { name: 'Арбалет, тяжелый', description: 'Боеприпас (дис. 100/400), двуручное, перезарядка, тяжёлое', weapon_id: weapons2[10].id }
                                     ])

weapon_items.each { |a| a.save }

armors = Armor.create([
                        { class: 'модификатор Лов', defend: 11, },
                        { class: 'модификатор Лов (макс. 2)', defend: 12, },
                        { class: 'модификатор Лов (макс. 2)', defend: 15, },
                        { class: '', defend: 18, }
                      ])

armors.each { |a| a.save }

armor_items = WorldInventory.create([
                                      { name: 'Лёгкий доспех', description: '', armor_id: armors[0].id },
                                      { name: 'Средний доспех Шкурный', description: '', armor_id: armors[1].id },
                                      { name: 'Средний доспех Полулаты', description: '', armor_id: armors[2].id },
                                      { name: 'Тяжёлый доспех Латы', description: '', armor_id: armors[3].id }
                                    ])
armor_items.each { |a| a.save }
=end

pp 'seeding finished'