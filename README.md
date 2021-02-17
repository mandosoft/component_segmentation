# Graph Component Segmentation
Read in ODGI Bin output and identify co-linear components

# Developer Instructions
**Environment**: [Anaconda 3.7 ](https://www.anaconda.com/distribution/)  
Ggfapy etc. does not have an anaconda package, so it's necessary to use pip:  
`pip install -r requirements.txt`  


**IDE:**  Pycharm Professional 2019.1  
* Travis CI - automatically runs tests on master and development branches

#### Example Run Configuration
Parameters: `--json-file=data/run1.B1phi1.i1.seqwish.w100.json --out-folder=data/ --cells-per-file=5000`  

#### Use

Some of the dependencies requires c compiler (gcc on Linux). On Debian derived Linux distributions (e.g. Debian, Ubuntu), it is recommended to do
```
sudo apt-get update
sudo apt-get install -y build-essential
```

Then go to the package directory and run (note the dot at the end) 
```
pip install .
```

It should install script `segmentation.py`. So, to run it in command line just run
```
segmentation.py --json-file=/path/to/your/json/files --out-folder=/output/directory/path
```

To get the full list of parameters, run the script without any parameters.

#### Docker

This module can be run in Docker. To build an image, run:

```
docker build -t component_segmentation:latest .
```

After the image is build, to run `component_segmentation`, use the following command:
```
docker run --rm -it -v <full/path/to/data>:/data component_segmentation:latest --json-file=/data/your.json.file.json --out-folder=/data/out
```

If several files with common prefix `your.json.files.prefix` should be processed, run 
```
docker run --rm -it -v <full/path/to/data>:/data component_segmentation:latest --json-file=/data/your.json.files.prefix"*" --out-folder=/data/out
```

Other options can be added at the end. To get the full option list, run container without any extra options as:
```
docker run --rm -it component_segmentation:latest
```