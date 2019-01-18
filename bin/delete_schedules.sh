name="11-ZUP_T1 11-ZUP_T4 12_ZUP_Te 13-ZUO_LGKK 15-ZUP_T5 16-ZUP_T1 17-ZUP_T1 17-ZUP_T2 18-ZUP_T1 18-ZUP_T2 19-ZUP_Pt"


SCHEDULE_DATE="20180210"

samDir="/usr/local/lsam/bin"
LSAMPORT=4100


DATUM=$SCHEDULE_DATE


while true; do

    for n in $name
    do
    
    y=$(echo $DATUM | cut -b 1-4)
    m=$(echo $DATUM | cut -b 5,6)
    d=$(echo $DATUM | cut -b 7,8)

    event="\$SCHEDULE:DELETE,${y}-${m}-${d},$n,$sOPCON_USR,$sOPCON_PW"
    echo ${samDir}/lsam${LSAMPORT} command ${event}
    ${samDir}/lsam${LSAMPORT} command ${event}
    done
    
sleep 1
DATUM=$(datecalc.pl $DATUM -d 1)
echo ""
done
