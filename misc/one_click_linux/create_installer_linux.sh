rm -rf dist
rm -rf build
conda env remove -n alphamapinstaller
conda create -n alphamapinstaller python=3.8 pip=20.2 -y
# conda create -n alphamapinstaller python=3.8
conda activate alphamapinstaller
# call conda install git -y
# call pip install 'git+https://github.com/MannLabs/alphamap.git#egg=alphamap[gui]' --use-feature=2020-resolver
# brew install freetype
pip install '../../.[gui]'
pip install pyinstaller
pyinstaller ../pyinstaller/alphamap.spec -y
conda deactivate
