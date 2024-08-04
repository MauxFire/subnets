# ARGUMENTS
# LOAD .env if it exists
python -m venv .commune
pip install pyyaml
source .commune/bin/activate

if [ -f .env ]; then 
source .env; 
else
    read -p "Enter your OPENAI API KEY: " OPENAI_API_KEY
    echo "OPENAI_API_KEY=$OPENAI_API_KEY" > .env
    source .env
fi 2> /dev/null

./scripts/install_python.sh
./scripts/install_node.sh
# ./scripts/install_docker.sh
./scripts/install_commune.sh
python -m pip install -e ~/commune 
python -m pip install python-dotenv
echo "$LIBP"
