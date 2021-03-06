# AWS software update
sudo yum -y update;

# Update Python packages
conda update -y --all;

# Revert Bokeh to 2.2.2 to enable HoloViews and Panel to work
conda install -y bokeh=2.2.2;

# Package updates; keep ArviZ at 0.11.1
pip install --upgrage arviz==0.11.1 cmdstanpy;
pip install --upgrade bebi103;
pip install --upgrade iqplot;

# Update cmdstan
python -c "import cmdstanpy; cmdstanpy.install_cmdstan()";

# Get new data sets
wget https://s3.amazonaws.com/bebi103.caltech.edu/data/naganathan_explanted_somite_deformability.csv;
mv naganathan_explanted_somite_anisotropy.csv $HOME/data/;

wget https://s3.amazonaws.com/bebi103.caltech.edu/data/wolfenden_arrhenius.csv;
mv wolfenden_arrhenius.csv $HOME/data/;

wget https://s3.amazonaws.com/bebi103.caltech.edu/data/roeschinger_growth_rate_data.csv;
mv roeschinger_growth_rate_data.csv $HOME/data/;

wget https://s3.amazonaws.com/bebi103.caltech.edu/data/chartier_cell_volume.csv;
mv rchartier_cell_volume.csv $HOME/data/;
