#!/bin/bash     

# local repo update                                                                                     
cd /root/project-blue-pandas/                                                                           
git fetch && git reset origin/main --hard                                                               
source python3-virtualenv/bin/activate                                                                  
pip install -r requirements.txt                   

# restart portfolio service                                                                             
systemctl restart myportfolio 
