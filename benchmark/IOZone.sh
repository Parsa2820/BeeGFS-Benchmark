FILE=$1
LOG_FILE=$2
EXCEL_FILE="$FILE.xls"
echo "Starting IOZone benchmark on $HOSTNAME" > $LOG_FILE
echo "File: $FILE" >> $LOG_FILE
echo "Date: $(date)" >> $LOG_FILE
echo "Excel file: $EXCEL_FILE" >> $LOG_FILE
echo "========================================" >> $LOG_FILE
echo "Benchmarking with all tests with file sizes from 1MB to 10GB" >> $LOG_FILE
iozone -a -F $FILE -b $EXCEL_FILE -n 1m -g 10g >> $LOG_FILE