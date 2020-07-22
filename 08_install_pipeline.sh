##################################################
#       DOWNLOAD THE PIPELINE 
##################################################

cd "/home/$username"
instpkg_cust_commit eval-fe56 015398922183ff180c61d35a7242aecd1fecfd8a

# function to update the paths in the config file
update_config() {
  sed -i 's/ssh_login *<- *"[^"]*"/ssh_login <- "'"${username}"'@localhost"/' "$1"
  sed -i 's/ssh_pw *<- *"[^"]*"/ssh_pw <- "'"${password}"'"/' "$1"
  sed -i 's/calcdir_loc *<- *"[^"]*"/calcdir_loc <- "\/home\/'"$username"'\/calcdir"/' "$1"
  sed -i 's/calcdir_rem *<- *"[^"]*"/calcdir_rem <- "\/home\/'"$username"'\/remcalcdir"/' "$1"
  sed -i 's/rootpath *<- *"[^"]*"/rootpath <- "\/home\/'"$username"'\/eval-fe56"/' "$1"
  sed -i 's/savePathTalys *<- *"[^"]*"/savePathTalys <- "\/home\/'"$username"'\/talysResults"/' "$1"
  sed -i 's/\(initClusterTALYS(.*, *talysExe *= *"\)[^"]*\(",.*\)$/\1'"\\/home\\/$username\\/talys\\/source\\/talys"'\2/' "$1" 
}
# update paths in the config files
update_config "eval-fe56/config.R"
update_config "eval-fe56/config.R.fulleval"
sed -i 's/setwd("[^"]*")/setwd("\/home\/'"$username"'\/eval-fe56")/' "eval-fe56/run_pipeline.R"

# create an exemplary calculation directory
cd "/home/$username"
mkdir "calcdir"
mkdir "remcalcdir"
mkdir "talysResults"
chown "$username:$username" calcdir remcalcdir talysResults  
chown -R "$username:$username" /home/$username/eval-fe56