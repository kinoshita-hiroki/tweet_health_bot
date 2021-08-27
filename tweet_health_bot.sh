export PATH="$PATH:/homw/crukky/bin"
month=`date '+%m'`
file=`cat /home/crukky/tweet_health_bot/month/${month}.txt`
log="/home/crukky/tweet_health_bot/tweet_health_bot.log"
state="
${month}月の旬の食べ物

${file}
"

echo "start" >> ${log}
echo `date` >> ${log}

twurl -d "status=${state}" /1.1/statuses/update.json &>> ${log}

echo "end" >> ${log}
