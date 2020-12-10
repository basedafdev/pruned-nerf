# Setup

```
git clone https://www.github.com/keras-team/keras-contrib.git
cd keras_contrib
python setup.py install

cd ..

conda env create -f environment.yml
conda activate prune_nerf
bash download_example_data.sh
mkdir logs/fern_test/tboard_val_imgs
python run_nerf.py --config config_fern.txt
tensorboard --logdir=logs/summaries --port=6006
```

## **Data Feed Pipeline**

![Alt Text](./imgs/pipeline.jpg)

## **NN Architecture**

![Alt Text](./imgs/architecture.svg)

### **Proposed Architecture**

![Alt Text](./imgs/sparse.svg)

## Sources

```
https://github.com/bmild/nerf
https://github.com/dcmocanu/sparse-evolutionary-artificial-neural-networks
```
