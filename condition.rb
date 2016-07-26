class SimpleClass
end

if nil
  puts true
end #false

@simpleObj = SimpleClass.new
if @simpleObj
  puts true
end #true

if 0
  puts true
end #true

if 1
  puts true
end #true

if []
  puts true
end #true

if ''
  puts true
end #true

if ' '
  puts true
end #true

