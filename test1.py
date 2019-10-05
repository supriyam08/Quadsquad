
import numpy as np
import argparse
import cv2


parser = argparse.ArgumentParser(
    description='Script to run MobileNet-SSD object detection network ')
parser.add_argument("--video", help="path to video file. If empty, camera's stream will be used")
parser.add_argument("--prototxt", default="MobileNetSSD_deploy.prototxt",
                    help='Path to text network file: '
                         'MobileNetSSD_deploy.prototxt for Caffe model or '
                    )
parser.add_argument("--weights", default="MobileNetSSD_deploy.caffemodel",
                    help='Path to weights: '
                         'MobileNetSSD_deploy.caffemodel for Caffe model or '
                    )
parser.add_argument("--thr", default=0.2, type=float, help="confidence threshold to filter out weak detections")
args = parser.parse_args()

# Labels of Network.
classNames = {0: 'background',
              1: 'aeroplane', 2: 'bicycle', 3: 'bird', 4: 'boat',
              5: 'bottle', 6: 'bus', 7: 'car', 8: 'cat', 9: 'chair',
              10: 'cow', 11: 'diningtable', 12: 'dog', 13: 'horse',
              14: 'motorbike', 15: 'person', 16: 'pottedplant',
              17: 'sheep', 18: 'sofa', 19: 'train', 20: 'tvmonitor'}


if args.video:
    cap = cv2.VideoCapture(args.video)
else:
    cap = cv2.VideoCapture(0)


