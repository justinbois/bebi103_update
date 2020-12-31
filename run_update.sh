sudo yum -y update;
conda update -y --all;
jupyter labextension install --no-build @ijmbarr/jupyterlab_spellchecker;
jupyter labextension install --no-build @pyviz/jupyterlab_pyviz;
jupyter lab build;
pip install --upgrade bebi103;
pip install --upgrade iqplot;
wget -P ~/data/ https://s3.amazonaws.com/bebi103.caltech.edu/data/rasson_dissociation_anisotropy.csv;
wget -P ~/data/ https://s3.amazonaws.com/bebi103.caltech.edu/data/rasson_competition_anisotropy.csv;
wget -P ~/data/ https://s3.amazonaws.com/bebi103.caltech.edu/data/ant_traffic.txt;
wget -P ~/data/ https://s3.amazonaws.com/bebi103.caltech.edu/data/elowitz_et_al_2002_fig_3a.csv;
wget -P ~/data/ https://s3.amazonaws.com/bebi103.caltech.edu/data/hw6.1_caulobacter_growth_events.csv;