module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

puts "------ Orange Lookup ------"
puts Orange.ancestors
puts "------ hotSauce Lookup ------"
puts HotSauce.ancestors