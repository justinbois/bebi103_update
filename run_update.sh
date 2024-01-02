# AWS software update
sudo yum -y update;

# Update Python packages
# conda update -y --all;

# Update cmdstan
python -c "import cmdstanpy; cmdstanpy.install_cmdstan()";

# JB's package updates
pip install --upgrade bebi103;
pip install --upgrade iqplot;

# Get new data sets
# wget https://s3.amazonaws.com/bebi103.caltech.edu/data/naganathan_explanted_somite_deformability.csv;
# mv naganathan_explanted_somite_anisotropy.csv $HOME/data/;
