#!/bin/sh
l=/tmp/minicom_log.txt
mkdir -p `dirname $l`
function quit {
	 echo "------" `date +"%y-%m-%d-%H-%M"` >> $l;
	 cat ${l}.tmp >> $l
	 rm ${HOME}/extrapty
}
(minicom-slave $@ -C ${l}.tmp -X ${HOME}/extrapty && quit) || quit
