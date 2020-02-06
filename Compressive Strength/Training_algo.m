function theta = Training_algo(X,y)
  
  X = mapFeature(X);
  size(X, 2)
options = optimset("GradObj", "on", "MaxIter", "400");
initialTheta = zeros(size(X, 2), 1);

% Set regularization parameter lambda to 1
lambda = 1;

%  Run fminunc to obtain the optimal theta
%  This function will return theta and the cost 
%[theta, cost] = fminunc(@(t)(costFunctionLinear(t, X, y)), initialTheta, options);
[theta, cost] = fminunc(@(t)(costFunctionLogisticReg(t, X, y, lambda)), initialTheta, options);
%[theta, cost] = fminunc(@(t)(costFunctionLogistic(t, X, y)), initialTheta, options);

% Print theta to screen
fprintf('Cost at theta found by fminunc: %f\n', cost);
%fprintf('theta: \n');
%fprintf(' %f \n', theta);
end
