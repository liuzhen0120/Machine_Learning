options = optimset('GradObj', 'on', 'MaxIter', '100');
initialTheta = zeros(2,1);
[optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options);

fprintf('optTheta is: %f.\n',optTheta);
fprintf('functionVal is: %f.\n',functionVal);
fprintf('exitFlag is: %f.\n',exitFlag);