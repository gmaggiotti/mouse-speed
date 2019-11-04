ACT=`xinput list-props "SynPS/2 Synaptics TouchPad" | grep "Synaptics Tap Action" | grep "2, 3, 0, 0, 1, 3, 0"`
echo $ACT

if [ -z "$ACT" ]
then
      `/usr/bin/xinput set-prop 11 "Synaptics Tap Action" 2 3 0 0 1 3 0`
else
      `/usr/bin/xinput set-prop 11 "Synaptics Tap Action" 0 0 0 0 0 0 0`
fi