#!/home/aabl-lab/miniconda3/envs/qd/bin/python
from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

setup_args = generate_distutils_setup(
     packages=['armpy', 'sim_setting'],
     package_dir={'':'src'}
)

setup(**setup_args)