#! /bin/bash

#!/bin/bash

echo "/etc/passwd" | grep "root" | wc -l
echo "${PIPESTATUS[@]}"
echo "${PIPESTATUS[1]}"