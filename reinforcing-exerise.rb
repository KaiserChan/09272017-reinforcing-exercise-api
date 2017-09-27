require 'httparty'

def ward_name
  toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
  toronto_wards_json = JSON.parse(toronto_wards_response.body)

  name = toronto_wards_json["objects"]
  ward = []

  name.each do |entry|
    ward << entry["name"]
  end

  ward
end

puts ward_name


def rep_name
  toronto_rep_response = HTTParty.get('https://represent.opennorth.ca/representatives/house-of-commons/')
  toronto_rep_json = JSON.parse(toronto_rep_response.body)

  name = toronto_rep_json["objects"]
  rep = []

  name.each do |entry|
    rep << entry["name"]
  end

  rep
end

puts rep_name
