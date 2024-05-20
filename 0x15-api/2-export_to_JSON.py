#!/usr/bin/python3
"""Module to gather data from an API and export to JSON"""

import json
import requests
import sys

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: {} EMPLOYEE_ID".format(sys.argv[0]))
        sys.exit(1)

    employee_id = sys.argv[1]
    url = "https://jsonplaceholder.typicode.com/"

    user = requests.get(url + "users/{}".format(employee_id)).json()
    todos = requests.get(url + "todos", params={"userId": employee_id}).json()

    username = user.get("username")
    tasks = []

    for task in todos:
        tasks.append({
            "task": task.get("title"),
            "completed": task.get("completed"),
            "username": username
        })

    data = {employee_id: tasks}
    filename = "{}.json".format(employee_id)
    with open(filename, mode='w') as file:
        json.dump(data, file)
