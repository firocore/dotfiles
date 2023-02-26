# script to Tiny-launch polybar

#!/usr/bin/env bash
u=$(xprop -name "Polybar tray window" _NET_WM_PID | grep -o '[[:digit:]]*')
kill $u
echo "---" | tee -a /tmp/polybar.log
polybar tray 2>&1 | tee -a /tmp/polybar.log & disown
~                                                                                                    
~   
