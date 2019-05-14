## What libraries do we need to load? 
library("httr")
library("jsonlite")

## Source in your hidden api-keys.R file
source("key.R")

##  Let's construct the API call.
# base_uri <-
base_url <- AIzaSyDqbQXLIixojq2yFjvWWJ1yIj83IPxtcjY

# resource <-
resource <- "/representatives"

# query_params <- list(
  # what (optional) parameters do we need?
# )

query_params <- list( key = api_key, address = "1315 NE Campus")

response <- GET(paste(base_url,resource), query = query_params)

response_content <- content(response, "text")

parsed_data <- fromJSON(response_content)


## Yay! Now we should have our data. Let's View(parsed_data) to see what we have to work with.


## Let's try out some fun data wrangling questions!
# Concatenate the full address of what you passed into the API call (as if we were writing it to mail a letter)

# Here's a challenge... can you find the ratio of officials in the Democratic Party to officials in the Republican Party?

