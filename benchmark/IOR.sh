FILE=$1
LOG_FILE=$2
echo "Starting IOR benchmark on $HOSTNAME" > $LOG_FILE
echo "File: $FILE" >> $LOG_FILE
echo "Date: $(date)" >> $LOG_FILE
echo "========================================" >> $LOG_FILE
echo "Benchmarking sequential write with 4KB block size" >> $LOG_FILE
ior -w -t 1m -b 4k -F -e -o $FILE >> $LOG_FILE
echo "----------------------------------------" >> $LOG_FILE
echo "Benchmarking sequential write with 1MB block size" >> $LOG_FILE
ior -w -t 1m -b 1m -F -e -o $FILE >> $LOG_FILE
echo "----------------------------------------" >> $LOG_FILE
echo "Benchmarking sequential write with 1GB block size" >> $LOG_FILE
ior -w -t 1m -b 1g -F -e -o $FILE >> $LOG_FILE
echo "========================================" >> $LOG_FILE
echo "Benchmarking sequential read with 4KB block size" >> $LOG_FILE
ior -r -t 1m -b 4k -F -e -o $FILE >> $LOG_FILE
echo "----------------------------------------" >> $LOG_FILE
echo "Benchmarking sequential read with 1MB block size" >> $LOG_FILE
ior -r -t 1m -b 1m -F -e -o $FILE >> $LOG_FILE
echo "----------------------------------------" >> $LOG_FILE
echo "Benchmarking sequential read with 1GB block size" >> $LOG_FILE
ior -r -t 1m -b 1g -F -e -o $FILE >> $LOG_FILE
echo "========================================" >> $LOG_FILE
echo "Benchmarking random write with 4KB block size" >> $LOG_FILE
ior -w -t 1m -b 4k -F -e -o $FILE -i 1 >> $LOG_FILE
echo "----------------------------------------" >> $LOG_FILE
echo "Benchmarking random write with 1MB block size" >> $LOG_FILE
ior -w -t 1m -b 1m -F -e -o $FILE -i 1 >> $LOG_FILE
echo "----------------------------------------" >> $LOG_FILE
echo "Benchmarking random write with 1GB block size" >> $LOG_FILE
ior -w -t 1m -b 1g -F -e -o $FILE -i 1 >> $LOG_FILE
echo "========================================" >> $LOG_FILE
echo "Benchmarking random read with 4KB block size" >> $LOG_FILE
ior -r -t 1m -b 4k -F -e -o $FILE -i 1 >> $LOG_FILE
echo "----------------------------------------" >> $LOG_FILE
echo "Benchmarking random read with 1MB block size" >> $LOG_FILE
ior -r -t 1m -b 1m -F -e -o $FILE -i 1 >> $LOG_FILE
echo "----------------------------------------" >> $LOG_FILE
echo "Benchmarking random read with 1GB block size" >> $LOG_FILE
ior -r -t 1m -b 1g -F -e -o $FILE -i 1 >> $LOG_FILE
echo "========================================" >> $LOG_FILE
echo "Benchmarking random read/write with 4KB block size" >> $LOG_FILE
ior -t 1m -b 4k -F -e -o $FILE -i 1 >> $LOG_FILE
echo "----------------------------------------" >> $LOG_FILE
echo "Benchmarking random read/write with 1MB block size" >> $LOG_FILE
ior -t 1m -b 1m -F -e -o $FILE -i 1 >> $LOG_FILE
echo "----------------------------------------" >> $LOG_FILE
echo "Benchmarking random read/write with 1GB block size" >> $LOG_FILE
ior -t 1m -b 1g -F -e -o $FILE -i 1 >> $LOG_FILE
echo "========================================" >> $LOG_FILE