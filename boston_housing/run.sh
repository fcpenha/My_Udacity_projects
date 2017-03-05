# REALLY IMPORTANT code snippet, for ignoring 
# python's user site libraries which are
# (usually previously installed)
export PYTHONNOUSERSITE=1

export PATH="/home/fcpenha/Work/python_collection/miniconda/bin:$PATH"

conda create -n boston_env --file conda_req.txt

source activate boston_env

# Execute and replace notebook (allowing errors in execution)
jupyter nbconvert --execute --allow-errors --to notebook --inplace boston_housing.ipynb

# Export as a HTML with the name 'report.html'
jupyter nbconvert --to html boston_housing.ipynb --output report

# Open up jupyter
jupyter notebook boston_housing.ipynb

source deactivate
