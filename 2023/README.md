# About the notebooks

This directory contains Jupyter notebooks that were used to produce graphs for
the paper "Chemical Reaction Simulator on Quantum Computers by First
Quantization(II) - Basic Treatment: Implementation".  Note that diagrams that
were created manually by drawing tools are not included here.  Only the machine
generated graphs and circuit diagrams are included.

To verify what scripts were used to produce what output, it is easiest to browse
the files on github.  Github will format the notebook files. The produced
diagrams and data files can be found in the subdirectories paper_diagrams and
output.

## Contents of the notebooks

2023paper_arithmetic.ipynb contains scripts that generate circuit diagrams of the
arithmetic gates.  All the code blocks can be run within a minute or two.

2023paper_circuit_size_evaluation.ipynb contains scripts that generate circuits with
various model sizes and count the number of required qubits.  The code blocks take
1 or 2 hours to run.

2023paper_diagrams.ipynb contains scripts that generate the majority of circuit
diagrams and graphs in the main content of the paper.

2023paper_hamiltonian.ipynb contains scripts that generate the hamiltonian
calculation graph.

2023paper_permutations.ipynb contains scripts that generate the diagram
demonstrating the permutation in the Slater determinant.

## To run the notebooks locally

The notebook files can be run on a platform where bash or any linux-like shell
is used and python3.10+ is installed.The author used Ubuntu22.04 on WSL2 on
Windows 11.  Some of the scripts require plenty of RAM. The author used a PC
with 64GB RAM.  

The notebook files can be run by extracting the four related git repositories
side-by-side and installing the python packages, and running the notebooks from
jupyter notebook.  Each step is described below:

### Step 1 prepare python
Install git and python3.10. On Ubuntu this would be:

```
$ sudo apt update && sudo apt install python3 git
```

On wsl2 it is also useful to install wslu, which allows launch a browser on the
windows world from a wsl2 command line.

```
$ sudo apt install wslu
```

### Step 2 checkout the repositories

Within the working directory, checkout the four repositories as follows:

```
$ git clone git@github.com:crsq-dev/crsq-heap.git
$ git clone git@github.com:crsq-dev/crsq-arithmetic.git
$ git clone git@github.com:crsq-dev/crsq-main.git
$ git clone git@github.com:crsq-dev/crsq-papers.git
```

### Step 3 install python dependencies

Go to the directory containing this README and install the python dependencies
in a virtual environment.

```
$ cd crsq-papers/2023
$ python3 -m venv .env
$ source .env/bin/activate
$ pip3 install -r requirements.txt
```

Set PYTHONPATH using the provided script.

```
$ source setvars.sh
```

### Step 4 launch jupyter notebook

```
$ jupyter notebook
```

A browser window should appear. Navigate to the notebook files under
the notebooks directory.
