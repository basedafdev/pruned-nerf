# Setup

```
git clone https://www.github.com/keras-team/keras-contrib.git
cd keras_contrib
python setup.py install

cd ..

conda env create -f environment.yml
conda activate nerf
bash download_example_data.sh
python run_nerf.py --config config_fern.txt
tensorboard --logdir=logs/summaries --port=6006
```

## Sources

```
https://github.com/bmild/nerf
https://github.com/dcmocanu/sparse-evolutionary-artificial-neural-networks
```
