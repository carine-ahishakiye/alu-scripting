#!/usr/bin/python3
# -*- coding: utf-8 -*-

""" Returns the number of subscribers for a given subreddit. """

import requests

def number_of_subscribers(subreddit):
    # Set a custom User-Agent to avoid Too Many Requests error
    headers = {'User-Agent': 'MyRedditScript/0.1'}
    # Create the URL for the Reddit API request
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    try:
        # Make the request to the Reddit API
        response = requests.get(url, headers=headers, allow_redirects=False)
        # Check if the request was successful
        if response.status_code == 200:
            # Parse the JSON response
            data = response.json()
            # Return the number of subscribers
            return data['data']['subscribers']
        else:
            # If the subreddit is invalid, return 0
            return 0
    except requests.RequestException:
        # In case of any request exception, return 0
        return 0
