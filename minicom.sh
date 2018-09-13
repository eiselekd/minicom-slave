#!/bin/bash
l=/tmp/minicom_log.txt
mkdir -p `dirname $l`
quit() {
	 echo "------" `date +"%y-%m-%d-%H-%M"` >> $l;
	 cat ${l}.tmp >> $l
	 rm ${HOME}/extrapty
}
(${HOME}/bin-minicom/bin/minicom -C ${l}.tmp -X ${HOME}/extrapty $@ && quit) || quit
