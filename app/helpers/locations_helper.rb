module LocationsHelper
	#parse API data to store it in array of hashews so that each bus is a hash
	def fetch_api_data(source)
		response = Net::HTTP.get_response(URI.parse(source))
		data = response.body
		JSON.parse(data)
	end


	#compare user lat/long with all the buses to see which ones are "nearby" which for now is 0.01 degrees of lat/long.
	def is_nearby?(user_lat, user_long, bus_lat, bus_long)
		(user_lat - bus_lat).abs <= 0.01 && (user_long - bus_long).abs <= 0.01

	end	

	#TODO make this a true circular radius
	#TODO: Give user option of how close





end
