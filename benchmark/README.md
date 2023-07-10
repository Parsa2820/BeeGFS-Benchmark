# Benchmarks
This directory contains file system benchmarks that can be used to test the performance of the BeeGFS file system. The benchmarks are run as bash scripts on the client machine. The scripts run different tests and generate output files that can be used to analyze the performance of the file system.

## Install benchmark tools
The benchmark tools used in the scripts are installed on the client machine using the `benchmark-tools.yml` playbook. See the [README](../ansible/README.md) in the ansible directory for more information on how to run the playbook.

## IOZone.sh
IOZone is a file system benchmark tool that generates and measures a variety of file operations. The script runs IOZone on the client machine and generates output files that can be used to analyze the performance of the file system. The script can be run as follows:

```
bash IOZone.sh <directory in which to run IOZone> <output file> <file size>
```

## IOR.sh
IOR is a file system benchmark tool that generates and measures a variety of file operations. The script runs IOR on the client machine and generates output files that can be used to analyze the performance of the file system. The script can be run as follows:

```
bash IOR.sh <file under test> <output file>
```
