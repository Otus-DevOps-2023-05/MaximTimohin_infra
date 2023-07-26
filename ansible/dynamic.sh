#!/bin/bash

# Add code to generate dynamic inventory here

# Below is the static example
inventory='{
    "app": {
        "hosts": ["appserver"],
        "vars": {
            "ansible_user": "ubuntu",
            "ansible_private_key_file": "/home/maxim/otus_devops/otus_git/ssh/MaxOtus"
        }
    },
    "db": {
        "hosts": ["dbserver"],
        "vars": {
            "ansible_user": "ubuntu",
            "ansible_private_key_file": "/home/maxim/otus_devops/otus_git/ssh/MaxOtus"
        }
    }
}'

echo $inventory
