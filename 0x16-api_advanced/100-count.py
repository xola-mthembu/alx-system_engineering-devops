#!/usr/bin/python3
"""
Module to recursively query the Reddit API and count specific keywords
in the titles of all hot articles for a given subreddit.
"""

import requests

def count_words(subreddit, word_list, hot_list=[], after=''):
    """Prints a sorted count of given keywords in the titles of hot articles."""
    url = f'https://www.reddit.com/r/{subreddit}/hot.json'
    headers = {'User-Agent': 'python:sub.count:v1.0 (by /u/yourusername)'}
    params = {'after': after, 'limit': 100}
    response = requests.get(url, headers=headers, params=params, allow_redirects=False)
    if response.status_code != 200:
        return
    try:
        data = response.json().get('data')
        children = data.get('children')
        for child in children:
            hot
