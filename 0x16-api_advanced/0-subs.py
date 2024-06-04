#!/usr/bin/python3
"""
Module to query the Reddit API and return the number of subscribers
for a given subreddit.
"""

import requests

def number_of_subscribers(subreddit):
    """Returns the number of subscribers for a given subreddit."""
    url = f'https://www.reddit.com/r/{subreddit}/about.json'
    headers = {'User-Agent': 'python:sub.count:v1.0 (by /u/yourusername)'}
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code != 200:
        return 0
    try:
        return response.json().get('data').get('subscribers')
    except Exception:
        return 0
