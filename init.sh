
cd /root/tmp
git clone git@github.com:taku910/mecab.git
cd mecab/mecab
./configure --with-charset=utf8
make
make install

apt-get update
apt-get install  -y --force-yes --no-install-recommends libmecab-dev mecab-ipadic-utf8

cd /root/tmp
git clone --depth 1 git@github.com:neologd/mecab-ipadic-neologd.git
cd mecab-ipadic-neologd
yes | ./bin/install-mecab-ipadic-neologd -n

# mecab -d /usr/local/lib/mecab/dic/mecab-ipadic-neologd

pip3 install mecab-python3

cd /root/tmp
# git clone git@github.com:taku910/crfpp.git
git clone git@github.com:hiroshi-umemoto/crfpp.git
cd crfpp
git checkout patch
./configure
make
make install
ldconfig

cd /root/tmp
# git clone git@github.com:taku910/cabocha.git
git clone git@github.com:hiroshi-umemoto/cabocha.git
cd cabocha
git checkout patch
./configure --with-charset=utf8 --enable-utf8-only
make
make check
make install
cd python
python setup.py install
ldconfig

