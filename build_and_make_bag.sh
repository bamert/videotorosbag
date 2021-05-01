docker build --tag "basalt_calibration" .
docker run --rm -v $(pwd)/shared:/yivio -e DISPLAY=host.docker.internal:0 --interactive  basalt_calibration:latest bash <<EOF
#Convert video to ros bag
python3 /yivio/videotobag.py /yivio/calibrate.mp4 /yivio/calibrate.bag

#basalt_calibrate --dataset-path /yivio/calibrate.bag --dataset-type bag --aprilgrid /yivio/aprilgrid.json --result-path /yivio/results_folder --cam-types kb4
EOF
