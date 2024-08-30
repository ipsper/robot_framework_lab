# robot_framework_lab
base to be able to compare robot framework with other test frameworks

## setup in vent
```
cd $HOME/repo/robot_framework_lab
python3 -m venv robot_framework_lab_venv
source robot_framework_lab_venv/bin/activate
python -m pip install -r requirements.txt
```
## To exit
```
deactivate
```
## To delete vent
```
rm -rf $HOME/repo/pytest_lab/robot_framework_lab_venv
```

## Run tests 
```
python -m robot tests/verify_package.robot
```
