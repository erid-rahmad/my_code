//crip ini berguna untuk menghapus data di database dengan menyisakan 3 hari terakhir

LOGFILE=/home/oracle/clearsafTES3.txt
DATEFORMAT="'Dy DD-Mon-YYYY HH24:MI:SS'"

echo "[$(date +%Y-%m-%d) $(date +%k:%M:%S)]" >> $LOGFILE

RESULT=$(
sqlplus username/password  <<EOF
delete from ist_safdb where saf_date in (select saf_date  from ist_safdb where saf_date < (select max(saf_date) -3 from ist_safdb)) ;
COMMIT;
EXIT;
EOF
)

echo "$RESULT" >> $LOGFILE
echo "[$(date +%Y-%m-%d) $(date +%k:%M:%S)]" >> $LOGFILE
