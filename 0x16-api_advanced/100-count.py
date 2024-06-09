#!/usr/bin/python3
"""
Module to count keywords in the titles of all hot articles recursively.
"""
import requests


def count_words(subreddit, word_list, after=None, count_dict={}):
    """
    Recursive function to count keywords in hot post titles.

    Args:
        subreddit (str): The name of the subreddit.
        word_list (list): List of keywords to count.
        after (str): The after parameter for pagination.
        count_dict (dict): Dictionary to hold the count of keywords.

    Returns:
        dict: Dictionary with the count of keywords.
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
            title = child.get("data", {}).get("title").lower()
            for word in word_list:
                if word.lower() in title.split():
                    count_dict[word.lower()] = count_dict.get(word.lower(), 0) + 1
        
        if after:
            return count_words(subreddit, word_list, after, count_dict)
        return count_dict
    return {}


def print_sorted_counts(count_dict):
    """
    Function to print the count dictionary sorted by count and alphabetically.

    Args:
        count_dict (dict): Dictionary with the count of keywords.
    """
    sorted_counts = sorted(count_dict.items(), key=lambda x: (-x[1], x[0]))
    for word, count in sorted_counts:
        print("{}: {}".format(word, count))
