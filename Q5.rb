def ip_class(ip_address)
  address = ip_address.split('.').first.to_i

  case address
  when 1..126
    'Class A'
  when 128..191
    'Class B'
  when 192..223
    'Class C'
  when 224..239
    'Class D '
  when 240..255
    'Class E '
  else
    'Invalid '
  end
end


print "Enter IP address: "
ip_address = gets


ip_class = ip_class(ip_address)
puts ip_class
