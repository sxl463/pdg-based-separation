#!/bin/bash
START=$(date +%s)
# do something
#./bzip2-alone test.txt
#./bzip2-softbound-no-check test.txt
#./bzip2-softbound-no-checking test.txt
#./bzip2-softbound-checking test.txt

#./lbm 100 lbm-test 1 1
#./lbm-softbound-checking 100 lbm-test 1 1
#./lbm-softbound-no-checking 100 lbm-test 1 1
./lbm-no-temporal 100 lbm-test 1 1


#./milc-softbound-original < su3imp.in > milc.ref.out 2> milc.ref.err

#./milc-no-softbound < su3imp.in > milc.ref.out 2> milc.ref.err
#./milc-softbound-no-checking < su3imp.in > milc.ref.out 2> milc.ref.err


#./sjeng-softbound-original ref.txt > sjeng.ref.out 2> sjeng.ref.err


#./mcf-softbound-no-checking inp.in > mcf.ref.out 2> mcf.ref.err

#./mcf-no-softbound inp.in > mcf.ref.out 2> mcf.ref.err


#for i in {1..100}
#do
#    ./gobmk --quiet --mode gtp < ./input/13x13.tst > gobmk.ref.out 2> gobmk.r#ef.err
#done



#./gobmk-softbound-original --quiet --mode gtp < ./input/nngs.tst > gobmk.ref.out 2> gobmk.ref.err
#./gobmk-softbound-original --quiet --mode gtp < ./input/capture.tst > gobmk.ref.out 2> gobmk.ref.err
#./gobmk-softbound-original --quiet --mode gtp < ./input/connection.tst > gobmk.ref.out 2> gobmk.ref.err
#./gobmk-softbound-original --quiet --mode gtp < ./input/trevorc.tst > gobmk.ref.out 2> gobmk.ref.err
#./gobmk-softbound-original --quiet --mode gtp < ./input/connect.tst > gobmk.ref.out 2> gobmk.ref.err
#./gobmk-softbound-original --quiet --mode gtp < ./input/connect_rot.tst > gobmk.ref.out 2> gobmk.ref.err
#./gobmk-softbound-original --quiet --mode gtp < ./input/doiwog.tst > gobmk.ref.out 2> gobmk.ref.err
# start your script work here
ls -R /etc > /tmp/x
rm -f /tmp/x
# your logic ends here
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds"

