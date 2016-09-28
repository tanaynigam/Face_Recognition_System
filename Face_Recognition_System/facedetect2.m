% buildDetector: build face parts detector object
% 
detector = buildDetector( 1, 1, 176 )
%
%Output parameter:
% detector: built detector object
%
%
%Input parameters:
%thresholdFace (optional): MergeThreshold for face detector (Default: 1)
%thresholdParts (optional): MergeThreshold for face parts detector (Default: 1)
%stdsize (optional): size of normalized face (Default: 176)
%
%
%Example:
detector = buildDetector();
img = imread('SAM_3200.jpg');
[bbbox bbimg] = detectFaceParts(detector,img);