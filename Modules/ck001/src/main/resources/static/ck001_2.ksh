EXECBASE=ck001
EXECUTABLE=$PWD/$EXECBASE.exe
rm -f fort.*

INPUT1=$1
INPUT9=$2
OUTPUTDIR=$3

#ln -s llh.bin fort.9
#ln -s ck001-out.txt fort.10
#ln -s ck001-out.bin fort.11

ln -s $INPUT9 fort.9
ln -s $OUTPUTDIR/ck001-out.txt fort.10
ln -s $OUTPUTDIR/ck001-out.bin fort.11

echo $EXECUTABLE

#$EXECUTABLE < input.dat > output.dat
$EXECUTABLE < $INPUT1 > $OUTPUTDIR/output.dat

echo "Done with ck001!!"

rm fort.*

