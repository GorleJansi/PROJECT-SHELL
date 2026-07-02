#! /bin/bash

source_dir=$1
dest_dir=$2
days=${3:-7}

if [ $# -lt 2 ]; then
     echo "Command format sh $0 <source_dir> <dest_dir> <days>[optional]"
     exit 1
fi

if [ ! -d "$source_dir" ]; then
    echo "ERROR:source directory doesnt exist"
    exit 1
fi

if [ ! -d "$dest_dir" ]; then
    echo "ERROR:dest directory doesnt exist"
    exit 1
fi

files=$(find "$source_dir" -type f -mtime +"$days")
logfilename=$dest_dir/log-$(date +%F-%H-%M).zip

if [ -z "$files" ]; then
    echo "ERROR:no files older than $days ..."
    exit 1
else
    find "$source_dir" -type f -mtime +"$days" | zip -@ "$logfilename"
fi

if [ -f "$logfilename" ]; then
        echo "SUCCESS:files are zipped and copied to dest directory"
else
        echo "ERROR:cant find $logfilename "  
fi
