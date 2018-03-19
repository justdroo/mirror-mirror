def is_you_name_droo(name)
  binding.pry
  if name.downcase == "droo"
    true
  else
    false
  end
end

is_you_name_droo(name)
# Will get thrown into debugger.
# Can evaluate if `name == 'droo'`
