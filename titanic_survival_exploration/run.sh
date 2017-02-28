# REALLY IMPORTANT code snippet, for ignoring 
# python's user site libraries which are
# (usually previously installed)
export PYTHONNOUSERSITE=1

export PATH="/home/fcpenha/Work/python_collection/miniconda/bin:$PATH"

conda create -n titanic_env --file conda_req.txt

source activate titanic_env

# Execute and replace notebook (allowing errors in execution)
jupyter nbconvert --execute --allow-errors --to notebook --inplace  titanic_survival_exploration.ipynb

# Export as a HTML with the name 'report.html'
jupyter nbconvert --to html titanic_survival_exploration.ipynb --output report

# Open up jupyter
jupyter notebook titanic_survival_exploration.ipynb

source deactivate
