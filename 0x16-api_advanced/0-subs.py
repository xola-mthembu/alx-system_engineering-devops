#!/usr/bin/python3
"""
Module to query the Reddit API and return the number of subscribers.
"""
import requests


def number_of_subscribers(subreddit):
    """
    Function to get the number of subscribers for a subreddit.

    Args:
        subreddit (str): The name of the subreddit.

    Returns:
        int: The number of subscribers, or 0 if the subreddit is invalid.
    """
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {"User-Agent": "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"}
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        data = response.json().get("data", None)
        if data:
            return data.get("subscribers", 0)
    return 0
