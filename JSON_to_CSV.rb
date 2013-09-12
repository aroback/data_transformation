require 'rubygems'
require 'config/constants'
require 'json'

output_file = OUTPUT_PATH + "example_csv.txt"
f = File.new(output_file, "w+")

source_file = ["example.txt"]

source_file.each do |i|
	parsed = JSON.parse(File.open(SOURCE_PATH + "#{i}").read)
	parsed.each do |object|
		user_id = object["user"]["id_str"]
		tweet_text = object["text"]
		tweet_id = object["id_str"]
		created_at = object["created_at"]
		retweet_count = object["retweet_count"]
		source = object["source"]
		favorite_count = object["favorite_count"]
		f.puts user_id.to_s() + "," + tweet_id.to_s() + "," + '"' + tweet_text.to_s() + '"' + "," + created_at.to_s() + "," + retweet_count.to_s() + "," + favorite_count.to_s() + "," + source.to_s() + "\n"
	end
end
