 # -build and design a nested data structure to represent real-world construct
 # - have a mix of hashes and arrays
 #    -Construct a gym with different rooms
 #      - Yoga room
 #         - mats
 #         - instructor
 #       - Weights room
 #        	-bench press
 #        	-dumbells
 #        	-strong guy
 #        - Cardio room
 #         -bike
 #         -treadmill
 #         -elliptical

 gym = {
 	yoga_room: {
 		mats: 10,
 		instructor: "very much in shape"
 	},
 	weights_room: [
 		"bench_press",
 		"dumbbells",
 		"macho man"
 		],
 		cardio_room: {
 			bike_count: 30,
 			treadmill_count: 15,
 			elliptical_count: 10,
 			six_pack_people: 1,
 		}
 }
 
 gym[:yoga_room][:mats]
 gym[:weights_room][2].upcase!
 gym[:weights_room].push("scared girl")
 gym[:weights_room].reverse!
 p gym