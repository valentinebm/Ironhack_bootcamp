arr = [[1,2,3], [4,5,6]]

puts arr[1][2]
# => 6

arr2 = [
 { :lat => 25, :lng => 80, :name => "Miami"},
 { :lat => 48, :lng => 2, :name => "Paris"},
 { :lat => 40, :lng => 3, :name => "Madrid"}
]

puts arr2[2][ :name]
# => Madrid

lemonade_revenue = {
  :monday => 20,
  :tuesday => 30,
  :wednesday => 25,
  :thursday => 20,
  :friday => 10,
  :saturday => 40,
  :sunday => 20,
}

puts lemonade_revenue[:monday]
# => 20


lemonade_finances = {
  :monday => {:revenue => 20, :cost => 5, :feedback => ["Awesome", "Really good"]},
  :tuesday => {:revenue => 30, :cost => 5, :feedback => ["Nice", "Pretty good"]},
  :wednesday => {:revenue => 25, :cost => 5, :feedback => ["Awesome", "Really good"]},
  :thursday => {:revenue => 20,:cost => 5, :feedback => ["Awesome", "Really good"]},
  :friday => {:revenue => 10,:cost => 5, :feedback => ["Awesome", "Really good"]},
  :saturday => {:revenue => 40,:cost => 5, :feedback => ["Awesome", "Really good"]},
  :sunday => {:revenue => 20,:cost => 5, :feedback => ["Awesome", "Really good"]},
}
puts lemonade_finances[:monday][:revenue]
# => 20
puts lemonade_finances[:monday][:feedback][0]
# => Awesome

hash = {
  :wat => [0, 1, :wut => [0,[[0,1,2,3,4,5,6,7,8,:bbq => "SO GOOD"],1]]]
}

puts hash[:wat][2][:wut][1][0][9][:bbq]

arr = [[0,1,2,3,4,:secret => {:unlock => [0, "HELLO"]}]]

puts arr[0][5][:secret][:unlock][1]
