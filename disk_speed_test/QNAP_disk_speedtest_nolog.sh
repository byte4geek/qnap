#!/bin/sh
###################################
# speed disk test for QNAP 4 bays #
#        without log file         #
#         by PeppeBytes           #
#        Oct-08-2015 v 1.0        #
###################################
date
echo ""
echo "Write Test on Disk 1"
start=`date +%s`
dd if=/dev/zero of=/share/HDA_DATA/write_test_file bs=1M count=1024
end=`date +%s`
runtime=$(python -c "print(${end} - ${start})")
matsec=$(python -c "print(1024 / ${runtime})")
echo "1GB in "$runtime"s - "$matsec"MB/s"
echo ""

echo "Write Test on Disk 2"
start=`date +%s`
dd if=/dev/zero of=/share/HDB_DATA/write_test_file bs=1M count=1024
end=`date +%s`
runtime=$(python -c "print(${end} - ${start})")
matsec=$(python -c "print(1024 / ${runtime})")
echo "1GB in "$runtime"s - "$matsec"MB/s"
echo ""

echo "Write Test on Disk 3"
start=`date +%s`
dd if=/dev/zero of=/share/HDC_DATA/write_test_file bs=1M count=1024
end=`date +%s`
runtime=$(python -c "print(${end} - ${start})")
matsec=$(python -c "print(1024 / ${runtime})")
echo "1GB in "$runtime"s - "$matsec"MB/s"
echo ""

echo "Write Test on Disk 4"
start=`date +%s`
dd if=/dev/zero of=/share/HDD_DATA/write_test_file bs=1M count=1024
end=`date +%s`
runtime=$(python -c "print(${end} - ${start})")
matsec=$(python -c "print(1024 / ${runtime})")
echo "1GB in "$runtime"s - "$matsec"MB/s"
echo ""

echo "Copy Test From Disk 1 to Disk 2"
start=`date +%s`
dd if=/share/HDA_DATA/write_test_file of=/share/HDB_DATA/write_test_file bs=1M count=1024
end=`date +%s`
runtime=$(python -c "print(${end} - ${start})")
matsec=$(python -c "print(1024 / ${runtime})")
echo "1GB in "$runtime"s - "$matsec"MB/s"
echo ""

echo "Copy Test From Disk 1 to Disk 3"
start=`date +%s`
dd if=/share/HDA_DATA/write_test_file of=/share/HDC_DATA/write_test_file bs=1M count=1024
end=`date +%s`
runtime=$(python -c "print(${end} - ${start})")
matsec=$(python -c "print(1024 / ${runtime})")
echo "1GB in "$runtime"s - "$matsec"MB/s"
echo ""

echo "Copy Test From Disk 1 to Disk 4"
start=`date +%s`
dd if=/share/HDA_DATA/write_test_file of=/share/HDD_DATA/write_test_file bs=1M count=1024
end=`date +%s`
runtime=$(python -c "print(${end} - ${start})")
matsec=$(python -c "print(1024 / ${runtime})")
echo "1GB in "$runtime"s - "$matsec"MB/s"
echo ""

echo "Copy Test From Disk 2 to Disk 1"
start=`date +%s`
dd if=/share/HDB_DATA/write_test_file of=/share/HDA_DATA/write_test_file bs=1M count=1024
end=`date +%s`
runtime=$(python -c "print(${end} - ${start})")
matsec=$(python -c "print(1024 / ${runtime})")
echo "1GB in "$runtime"s - "$matsec"MB/s"

rm -f /share/HDA_DATA/write_test_file
rm -f /share/HDB_DATA/write_test_file
rm -f /share/HDC_DATA/write_test_file
rm -f /share/HDD_DATA/write_test_file
