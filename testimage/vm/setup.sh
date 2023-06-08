# !/bin/bash
# /workspace

# cocktail
echo "SETUP"

chmod +x ./elastic-ml/examples/tc_scripts/*.sh
chmod +x ./elastic-ml/examples/run.sh

# git clone https://github.com/DS3Lab/CocktailSGD.git ~/CocktailSGD
cd ./elastic-ml
python3 -m pip install -e .