# research-project


## file structure

- SimulationStudy/
  - simulation.ipynb
    - conducting simulation study for our proposed method (base model)
  - simulation-squared-penalty.ipynb
    - conducting simulation study for our proposed method with squared penalty (improvement on base model)
  - simulation-l2reg.ipynb
    - conducting simulation study for our proposed method with l2 regularization (improvement on base model)
  - simulation-benchmark.ipynb
    - conducting simulatiom study for benchmark method (BP method)
  - simulation_bayesian.R
    - conducting simulatiom study for benchmark method (Bayes method)
  - rds_to_csv.R
    - transforming rds file into csv
  - ExtractSimulationResults-proposed-method.ipynb
    - visualising the simulation results for our proposed method
  - ExtractSimulationResults-Comparison.ipynb
    - comparing our simulation result with benchmarks


- EmpiricalStudy/
  - data_construction.ipynb
    - processing raw data
  - EDA_new_dataset.ipynb
    - conducting explanatory data analysis
  - EmpiricalStudy
    - conducting empirical study and visualising the results
