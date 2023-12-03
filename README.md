
# Add pipy user.  
run ./1-add-user.sh  

# Create iptable rules  
run ./2-iptables-init.sh  

# Set pipy repo url and run pipy  
PIPY_REPO='... repo url' ./3-run-pipy.sh  

