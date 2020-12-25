# **Neural Radiance Fields with SET Pruning**

## **What is a NeRF?**

A neural radiance field is a simple fully connected network (weights are ~5MB) trained to reproduce input views of a single scene using a rendering loss. The network directly maps from spatial location and viewing direction (5D input) to color and opacity (4D output), acting as the "volume" so we can use volume rendering to differentiably render new views.

Optimizing a NeRF takes between a few hours and a day or two (depending on resolution) and only requires a single GPU. Rendering an image from an optimized NeRF takes somewhere between less than a second and ~30 seconds, again depending on resolution.

** This description is from original nerf [README.md](https://github.com/bmild/nerf) **

## Requirements

- Python version 3 or later
- Conda
- wget cli

## Setup Environment

```
conda env create -f environment.yml
conda activate prune_nerf
bash download_example_data.sh
bash create_log_folder.sh
```

## Running

First configure hyperparameters in config\_\*.txt.

Starting training model:

```
python3 run_nerf.py --config config_fern.txt
```

Monitoring with tensorboard:

```
tensorboard --logdir=logs/summaries --port=6006
```

### **Extracting geometry from a NeRF**

Check out [`extract_mesh.ipynb`](https://github.com/bmild/nerf/blob/master/extract_mesh.ipynb) for an example of running marching cubes to extract a triangle mesh from a trained NeRF network. You'll need the install the [PyMCubes](https://github.com/pmneila/PyMCubes) package for marching cubes plus the [trimesh](https://github.com/mikedh/trimesh) and [pyrender](https://github.com/mmatl/pyrender) packages if you want to render the mesh inside the notebook:

** This description is from original nerf [README.md](https://github.com/bmild/nerf) **

## References

```
@misc{mildenhall2020nerf,
      title={NeRF: Representing Scenes as Neural Radiance Fields for View Synthesis}, 
      author={Ben Mildenhall and Pratul P. Srinivasan and Matthew Tancik and Jonathan T. Barron and Ravi Ramamoorthi and Ren Ng},
      year={2020},
      eprint={2003.08934},
      archivePrefix={arXiv},
      primaryClass={cs.CV}
}
```
