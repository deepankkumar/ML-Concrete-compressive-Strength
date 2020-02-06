clear ;

%% Load Data
data = load("Concrete.csv");
X = data(:, 1:8);
y = data(:, 9);
clear data;

% Print out some data points
%fprintf('First 10 examples from the dataset: \n');
%fprintf(' x = [%.0f %.0f %.0f ], y = %.0f \n', [X(1:10,:) y(1:10,:)]');

theta = Training_algo(X, y);
size(theta)
