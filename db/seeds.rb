User.destroy_all
u1 = User.create :email => 'sam@gmail.com', :password => 'chicken', :admin => true
u2 = User.create :email => 'naoki@gmail.com', :password => 'chicken'
u3 = User.create :email => 'mika@gmail.com', :password => 'chicken'
puts "#{ User.count } users."


Location.destroy_all
l1 = Location.create :address => "18 Derby street, Caufield North, Victoria, 3010", :harvest => 'lemon', :image => 'https://judyunger.files.wordpress.com/2020/12/lemon-tree-back-fence-.jpg?w=640&h=480', :note => "we have too many lemon, feel free to take some."
l2 = Location.create :address => "70-90 Koornang street, Carnegie, Victoria, 3025",:harvest => 'Bay leaves', :image => 'https://www.wodongatafe.edu.au/Portals/0/The%20Bay%20Tree.JPG', :note => "Bay tree on the footpath!"
l3 = Location.create :address => "Rippon Lea Estate, Rippon Lea, Victoria, 3021",:harvest => 'Pink pepercorn', :image => 'https://u9b2w4s6.rocketcdn.me/wp-content/uploads/2021/01/pink-peppercorns-06.jpg', :note => "Pink peppercorn tree in the garden near the gate!"
puts "#{ Location.count } locations."

Comment.destroy_all
c1 = Comment.create :content => "It was plenty lemons on the tree!", :date => "2022-01-15", :like => false
c2 = Comment.create :content => "the Butcher near the bay tree is very good shop", :date => "2022-10-21", :like => false
c3 = Comment.create :content => "We had the pink pepercorn on our dinner.", :date => "2022-06-18", :like => false 
puts "#{ Comment.count } comments." 


#Associations
puts "Users and locations "
u1.locations << l1
u2.locations << l2
u3.locations << l3

puts "comments and locations"
l1.comments << c1
l2.comments << c2
l3.comments << c3

puts "comments and users"
u1.comments << c1
u2.comments << c2
u3.comments << c3




