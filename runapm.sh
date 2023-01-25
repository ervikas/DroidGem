java  -jar ./extract_callgraph.jar $1 


#cd ../
rm -rf ./output
mkdir ./output
python apm-gdot.py

python apm-gembed.py
python apm-ensemble.py

