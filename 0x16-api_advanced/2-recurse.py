#!/usr/bin/python3
"""
Module to recursively query the Reddit API for all hot post titles.
"""
import requests


def recurse(subreddit, hot_list=[], after=None):
    """
    Recursive function to get all hot post titles.

    Args:
        subreddit (str): The name of the subreddit.
        hot_list (list): The list of hot post titles.
        after (str): The after parameter for pagination.

    Returns:
        list: List of all hot post titles, or None if the subreddit is invalid.
    """
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    headers = {"User-Agent": "Mozilla/5.0"}
    params = {"after": after, "limit": 100}
    response = requests.get(url, headers=headers, params=params, allow_redirects=False)

    if response.status_code == 200:
        data = response.json().get("data", {})
        children = data.get("children", [])
        after = data.get("after")

        for child in children:
            hot_list.append(child.get("data", {}).get("title"))
        
        if after:
            return recurse(subreddit, hot_list, after)
        return hot_list
    return None
