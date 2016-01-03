#!/bin/zsh
# to manage money by interact with shell, output file in ~/management/document/money_document

DATE=$(date '+%m%d%y')

if [ -n "$1" ]; then
    DATE=$1
fi

while true 
do 
    echo -n "1. Enter your MONEY count"  | lolcat
    read money_count
    echo -n "2. Enter your MONEY-spent details"  | lolcat
    read money_details

    if [ -z $money_count ]
    then 
        break
    fi

    # save the money_record_$DATE.rpt file in DOCUMENT_PATH
    DOCUMENT_PATH=/home/yorick/management/document/money_document/money_record_$DATE.rpt
    echo "$money_count;$money_details" >> $DOCUMENT_PATH

done

# show file
