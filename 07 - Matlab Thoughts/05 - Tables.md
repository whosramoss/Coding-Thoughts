# Table 

### A common model of creating tables within matlab

```matlab
LastName = {'Smith';'Johnson';'Williams';'Jones';'Brown'};
Age = [38;43;38;40;49];
Height = [71;69;64;67;64];
Weight = [176;163;131;133;119];
BloodPressure = [124 93; 109 77; 125 83; 117 75; 122 80];

A = table(Age, Height, Weight, BloodPressure, 'RowNames', LastName)

%                Age    Height    Weight    BloodPressure
%                ___    ______    ______    _____________
%
%    Smith       38       71       176       124     93  
%    Johnson     43       69       163       109     77  
%    Williams    38       64       131       125     83  
%    Jones       40       67       133       117     75  
%    Brown       49       64       119       122     80

```