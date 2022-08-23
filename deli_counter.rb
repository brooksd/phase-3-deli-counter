# Write your code here.

def line(deli_counter)
  if deli_counter.empty?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    deli_counter.each.with_index(1) do |person, i|
      current_line << " #{i}. #{person}"
    end
    puts current_line
  end
end

def take_a_number(deli_counter, name)
  deli_counter << name
  puts "Welcome, #{name}. You are number #{deli_counter.length} in line."
end

def now_serving(deli_counter)
  if deli_counter.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_counter.first}."
    deli_counter.shift
  end
end