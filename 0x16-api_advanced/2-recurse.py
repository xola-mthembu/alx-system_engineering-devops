#!/usr/bin/python3
"""
Module to recursively query the Reddit API and return a list of titles
of all hot articles for a given subreddit.
"""

import requests

def recurse(subreddit, hot_list=[], after=''):
    """Returns a list of titles of all hot articles for a given subreddit."""
    url = f'https://www.reddit.com/r/{subreddit}/hot.json'
    headers = {'User-Agent': 'python:sub.count:v1.0 (by /u/yourusername)'}
    params = {'after': after, 'limit': 100}
    response = requests.get(url, headers=headers, params=params, allow_redirects=False)
    if response.status_code != 200:
        return None
    try:
        data = response.json().get('data')
        children = data.get('children')
        for child in children:
            hot_list.append(child.get('data').get('title'))
        after = data.get('after')
        if after:
            return recurse(subreddit, hot_list, after)
        return hot_list
    except Exception:
        return None
