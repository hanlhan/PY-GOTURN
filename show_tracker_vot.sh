#!/usr/bin/env bash
DEPLOY_PROTO='/home/dobio/PY-GOTURN/nets/tracker.prototxt'
CAFFE_MODEL='/home/dobio/data/dump_model/dump_model_iter_450000.caffemodel'
TEST_DATA_PATH='/home/dobio/data/vot2014'

python3 -m goturn.test.show_tracker_vot \
	--p $DEPLOY_PROTO \
	--m $CAFFE_MODEL \
	--i $TEST_DATA_PATH \
	--g 0
