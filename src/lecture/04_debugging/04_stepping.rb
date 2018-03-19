def is_you_name_droo(name)
  binding.pry
  if name.downcase == "droo"
    true
  else
    false
  end
end

is_you_name_droo(name)
# IN DEBUGGER
  next
  # Stepping over - will evaluate the next line and return.
  step
  # Stepping in - will go into the next function call
  out ?
  # Stepping out - will bubble up to the next return statement
  continue
  # Will continue the execution of your program
  exit!
  # Will stop running the program and immediately exit the process
