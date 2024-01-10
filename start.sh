

if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/shakir04/Neha.git /Neha
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Neha
fi
cd /Neha
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
