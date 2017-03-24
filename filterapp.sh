#!/bin/bash

cd /Applications
query=$1

##-------Debug-----
#query="tu"
#echo $query
##-------Debug-----

results=
results=$(ls|grep -i "$query")

#-------Debug-----
#echo $results
#-------Debug-----

totalstring='{"items":['
itemsarrstr=""
for result in $results
do
	itemstr='{
		"title": "'$result'",
		"subtitle": "'$result'",
		"arg": "'${result%.*}'"
		,''"icon": {"type": "fileicon","path": "~/Desktop"}}'
	itemsarrstr=$itemsarrstr$itemstr','
done
 
totalstring=$totalstring$itemsarrstr']}'

echo $totalstring

