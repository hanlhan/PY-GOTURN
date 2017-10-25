#!/usr/bin/env python3
# -*- coding: utf-8 -*-

DEPLOY_PROTO = '/home/dobio/PY-GOTURN/nets/tracker.prototxt'
CAFFE_MODEL = '/home/dobio/data/dump_model/dump_model_iter_450000.caffemodel'
TEST_DATA_PATH = '/home/dobio/data/vot2014'

if __name__ == '__main__':
    import os

    os.environ['DEPLOY_PROTO'] = DEPLOY_PROTO
    os.environ['CAFFE_MODEL'] = CAFFE_MODEL
    os.environ['TEST_DATA_PATH'] = TEST_DATA_PATH
    import goturn.test.show_tracker_vot
