#! /bin/sh
cd /home/homeassistant/nordpool-predict-fi
#python nordpool_predict_fi.py --foreca
#/home/homeassistant/nordpool-predict-fi/venv/bin/python nordpool_predict_fi.py --fingrid
/home/homeassistant/nordpool-predict-fi/venv/bin/python nordpool_predict_fi.py --eval --predict --commit
#python nordpool_predict_fi.py --predict --add-history --commit  
/home/homeassistant/nordpool-predict-fi/venv/bin/python nordpool_predict_fi.py --past-performance --commit
/home/homeassistant/nordpool-predict-fi/venv/bin/python /home/homeassistant/nordpool-predict-fi/nordpool_predict_fi.py --deploy --github
sleep 2
cp -f /home/homeassistant/nordpool-predict-fi/deploy/*.json /home/homeassistant/ha/www/deploy
