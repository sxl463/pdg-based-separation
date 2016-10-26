#!/bin/bash
START=$(date +%s)
# do something
#./bzip2-alone test.txt
#./astar-alone lake.cfg
./astar-softbound lake.cfg
# start your script work here
ls -R /etc > /tmp/x
rm -f /tmp/x
# your logic ends here
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds"

