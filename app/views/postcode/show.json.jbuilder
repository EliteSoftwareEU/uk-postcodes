json.postcode @postcode.postcode
json.geo do
  json.lat @postcode.lat
  json.lng @postcode.lng
  json.easting @postcode.easting
  json.northing @postcode.northing
  json.geohash @postcode.geohash
end
