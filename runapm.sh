
#java -Xmx16384m -cp ":./bin:lib/*" apmsa.APMMain $1
java -Xmx16384m -cp ":./bin:lib/*" -Dandroid.dir=/home/cheewei/AndroidSDK/platforms apmsa.APMMain $1

cp -rf output3/* gdot3
python apm-gdot.py

python apm-gembed.py
python apm-ensemble.py

