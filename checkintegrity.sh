#!/bin/bash 
scripts=(
    https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.js
    https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js
    https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js
    https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/fontawesome.min.js
    https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/regular.min.js
    https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/solid.min.js
)

for s in "${scripts[@]}"; do
    echo "$s";
    curl "$s" 2>/dev/null| openssl dgst -sha384 -binary | openssl base64 -A;
    echo "";
    echo "";
done
