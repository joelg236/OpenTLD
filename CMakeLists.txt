project(OpenTLD)

cmake_minimum_required(VERSION 2.8)

find_package(OpenCV REQUIRED highgui video videoio imgproc imgcodecs)

include_directories(
    src/imacq
    src/mftracker
    src/tld
    ${OpenCV_INCLUDE_DIRS})

add_library(libopentld
    src/imacq/ImAcq.cpp
    src/mftracker/BB.cpp
    src/mftracker/BBPredict.cpp
    src/mftracker/FBTrack.cpp
    src/mftracker/Lk.cpp
    src/mftracker/Median.cpp
    src/tld/Clustering.cpp
    src/tld/DetectionResult.cpp
    src/tld/DetectorCascade.cpp
    src/tld/EnsembleClassifier.cpp
    src/tld/ForegroundDetector.cpp
    src/tld/MedianFlowTracker.cpp
    src/tld/NNClassifier.cpp
    src/tld/TLD.cpp
    src/tld/TLDUtil.cpp
    src/tld/VarianceFilter.cpp)

target_link_libraries(libopentld ${OpenCV_LIBS})
