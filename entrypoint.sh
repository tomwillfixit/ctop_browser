#!/bin/sh

echo "ctop is available at http://localhost:8888/ctop"

/usr/bin/shellinaboxd -t -p 8888 --no-beep -s '/ctop/:root:root:/:/usr/bin/ctop -a -i -scale-cpu'



