#1 - Pull the json from the reddit API via http://www.reddit.com/.json
  # - http://mashable.com/stories.json (homework)

#2 - Parse it using the JSON library

#3 - Find the stories based on techniques used in the code_along (max of 25 provided)

#4 - Create a new story hash out of each story with the following keys :title, :upvotes and :category
    #title, #category and #upvotes may not be the names use

#5 - Add each story to an array

#6 - Print each story from the array on your "Front Page"

#7 - BONUS ### create an 'csv' file using the api data & Ruby's CSV library
     # -> http://ruby-doc.org/stdlib-2.2.2/libdoc/csv/rdoc/CSV.html
         #title, upvote, category are the required columns

require 'rest-client'
require 'pry'
require 'json'

def connect_to_api(url)               #passes in an endpoint
  response = RestClient.get(url)      #Use the RestClient. Use the GET request. Pass it the url. Assigns it to response
  JSON.parse(response)                #uses the JSON library to parse resonse
end

def find_stories(response)
  stories = response["data"]["children"]      #takes the parsed response in the data and children keys
  puts "Reddit has blessed us with #{stories.count} stories:"
  return stories                             #returns stories to pass it on to another method
end

def print_stories(stories)
  stories.each do |story|                   #iterates through each item in stories
  create_story_hash(story["data"])          #calls the create_story_hash method and passes it data
  end
end

def create_story_hash(story)
  new_story = {category: story["subreddit"], title: story["title"], upvotes: story["ups"]}
  return new_story
end

def create_story_array(new_story)
  create_story_hash.to_a
  puts create_story_hash
end



#def print_story_array(front_page)
  #puts front_page
  #Print out the contents of the array onto the front-page
  #puts "Title: #{story[:title]}. Category: #{story[:category]}. Upvotes: #{story[:upvotes]}"
#end

#RUN IT
reddit_url = "http://www.reddit.com/.json"                #assigns the endpoint to reddit_url variable
reddit_json_response = connect_to_api(reddit_url)
stories = find_stories(reddit_json_response)
print_stories(stories)
create_story_array
#print_story_array(front_page)
