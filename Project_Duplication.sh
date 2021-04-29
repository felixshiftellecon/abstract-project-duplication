#!/bin/bash

# Copy the project directory into the paste project directory
 function copyProject() {
        copy_project=~/Library/Application\ Support/Abstract/repos/$copy_project_id/.
        paste_project=~/Library/Application\ Support/Abstract/repos/$paste_project_id
        rsync -av --progress "$copy_project" /"$paste_project" --exclude commit.json --exclude .git/
    }

#Gives the option copy another project or try again
function tryAgain () {
        echo "Would you like to copy another project?"
        read stop_script
        yes_check='y.'
        if [[ "$stop_script" =~ $yes_check ]]; then
            getUuid
        else
            exit
        fi
    }

#Collect the project ids and make sure they are vaild UUIDs
function getUuid() {
        uuidRegex='^\{?[A-F0-9a-f]{8}-[A-F0-9a-f]{4}-[A-F0-9a-f]{4}-[A-F0-9a-f]{4}-[A-F0-9a-f]{12}\}?$'

        echo "Please enter the project ID to be copied:"
        read copy_project_id
        if [[ "$copy_project_id" =~ $uuidRegex ]]; then
            echo "Please enter the project ID to paste to:"
            read paste_project_id
            if [[ "$paste_project_id" =~ $uuidRegex ]]; then
                copyProject
            else
                echo "A valid project ID was not entered, please try again from the beginning"
                getUuid
            fi
        else
            echo "A valid project ID was not entered, please try again from the beginning"
            getUuid
        fi
    }

getUuid

tryAgain
