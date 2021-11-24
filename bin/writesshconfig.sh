#!/bin/bash

phosts=$(machgrp.rb -d prod | grep -E '(STP|LGKK)' | awk '{print $3}' | sort --unique)
thosts=$(machgrp.rb -d test | grep -E '(STP|LGKK)' | awk '{print $3}' | sort --unique)
ehosts=$(machgrp.rb -d entw | grep -E '(STP|LGKK)' | awk '{print $3}' | sort --unique)


echo "
Host *
    User sueswe
"
echo "
# PROD ################################
"
for h in $phosts ; do
  h=${h%%.*}
  host="${h}.test.sozvers.at"
  nslookup ${h}.test.sozvers.at | grep NXDOMAIN &>/dev/null
  if [[ $? -eq 0 ]]; then
      host="${h}.sozvers.at"
  fi
  echo "Host $h"
  echo "    HostName $host"
done

echo "
# TEST ################################
"
for h in $thosts ; do
  h=${h%%.*}
  host="${h}.test.sozvers.at"
  nslookup ${h}.test.sozvers.at | grep NXDOMAIN &>/dev/null
  if [[ $? -eq 0 ]]; then
      host="${h}.sozvers.at"
  fi
  echo "Host $h"
  echo "    HostName $host"
done

echo "
# ENTW ################################
"
for h in $ehosts ; do
  h=${h%%.*}
  host="${h}.test.sozvers.at"
  nslookup ${h}.test.sozvers.at | grep NXDOMAIN &>/dev/null
  if [[ $? -eq 0 ]]; then
      host="${h}.sozvers.at"
  fi
  echo "Host $h"
  echo "    HostName $host"
done


echo ""
echo "#"
echo "# ALLES ANDERE: (grep -vE )"
echo "#"
echo ""

phosts=$(machgrp.rb -d prod | grep -vE '(STP|LGKK)' | awk '{print $3}' | sort --unique)
thosts=$(machgrp.rb -d test | grep -vE '(STP|LGKK)' | awk '{print $3}' | sort --unique)
ehosts=$(machgrp.rb -d entw | grep -vE '(STP|LGKK)' | awk '{print $3}' | sort --unique)


echo "# PROD ################################"
for h in $phosts ; do
  h=${h%%.*}
  host="${h}.test.sozvers.at"
  nslookup ${h}.test.sozvers.at | grep NXDOMAIN &>/dev/null
  if [[ $? -eq 0 ]]; then
      host="${h}.sozvers.at"
  fi
  echo "Host $h"
  echo "    HostName $host"
done

echo "# TEST ################################"
for h in $thosts ; do
  h=${h%%.*}
  host="${h}.test.sozvers.at"
  nslookup ${h}.test.sozvers.at | grep NXDOMAIN &>/dev/null
  if [[ $? -eq 0 ]]; then
      host="${h}.sozvers.at"
  fi
  echo "Host $h"
  echo "    HostName $host"
done

echo "# ENTW ################################"
for h in $ehosts ; do
  h=${h%%.*}
  host="${h}.test.sozvers.at"
  nslookup ${h}.test.sozvers.at | grep NXDOMAIN &>/dev/null
  if [[ $? -eq 0 ]]; then
      host="${h}.sozvers.at"
  fi
  echo "Host $h"
  echo "    HostName $host"
done
