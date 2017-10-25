#!/usr/bin/env bash
IMAGENET_FOLDER='/home/dobio/data/ILSVRC2014'
ALOV_FOLDER='/home/dobio/data/ALOV'
INIT_CAFFEMODEL='/home/dobio/data/tracker.caffemodel'
TRACKER_PROTO='./nets/tracker.prototxt'
SOLVER_PROTO='./nets/solver.prototxt'

python3 -m goturn.train.train \
--imagenet $IMAGENET_FOLDER \
--alov $ALOV_FOLDER \
--init_caffemodel $INIT_CAFFEMODEL \
--train_prototxt $TRACKER_PROTO \
--solver_prototxt $SOLVER_PROTO \
--lamda_shift 5 \
--lamda_scale 15 \
--min_scale -0.4 \
--max_scale 0.4 \
--gpu_id 0 
