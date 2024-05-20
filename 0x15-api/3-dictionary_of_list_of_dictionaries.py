#!/usr/bin/python3
"""Module to gather data from an API and export for all employees in JSON"""

import json
import requests

if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/"

    users = requests.get(url + "users").json()
    todos = requests.get(url + "todos").json()

    data = {}
    for user in users:
        user_id = user.get("id")
        username = user.get("username")
        user_tasks = []

        for task in todos:
            if task.get("userId") == user_id:
                user_tasks.append({
                    "username": username,
                    "task": task.get("title"),
                    "completed": task.get("completed")
                })

        data[user_id] = user_tasks

    filename = "todo_all_employees.json"
    with open(filename, mode='w') as file:
        json.dump(data, file)
