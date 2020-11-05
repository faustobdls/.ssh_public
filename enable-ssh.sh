sudo chown -R $USER ~/.ssh/
sudo chmod -R 700 ~/.ssh/
sudo chmod 600 ~/.ssh/id_rsa
sudo chmod 644 ~/.ssh/id_rsa.pub
sudo chmod 755 ~/.ssh/known_hosts
ssh-agent $SHELL
ssh-add 
