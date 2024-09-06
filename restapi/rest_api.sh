#!/bin/bash

# Define the API endpoint and common headers
API_URL="https://jsonplaceholder.typicode.com/posts"
CONTENT_TYPE="Content-Type: application/json"

# Define data for POST and PUT requests
DATA='{"title": "foo", "body": "bar", "userId": 1}'

# Function to execute GET request
function get_request() {
    echo "Executing GET request..."
    curl -X GET "$API_URL" -H "$CONTENT_TYPE"
    echo -e "\n"
}

# Function to execute POST request
function post_request() {
    echo "Executing POST request..."
    curl -X POST "$API_URL" -H "$CONTENT_TYPE" -d "$DATA"
    echo -e "\n"
}

# Function to execute PUT request
function put_request() {
    echo "Executing PUT request..."
    curl -X PUT "$API_URL/1" -H "$CONTENT_TYPE" -d "$DATA"
    echo -e "\n"
}

# Function to execute DELETE request
function delete_request() {
    echo "Executing DELETE request..."
    curl -X DELETE "$API_URL/1" -H "$CONTENT_TYPE"
    echo -e "\n"
}

# Function to execute PATCH request
function patch_request() {
    echo "Executing PATCH request..."
    curl -X PATCH "$API_URL/1" -H "$CONTENT_TYPE" -d "$DATA"
    echo -e "\n"
}

# Execute all requests
get_request
post_request
put_request
delete_request
patch_request