```matlab
function result = myFunction(input)
  %Improved function with error handling
  try
    if input < 0
      error('Input must be non-negative.');
    end
    if ~isnumeric(input)
      error('Input must be a number.');
    end
    result = someCalculation(input);
  catch e
    %Handle different errors separately
    if strcmp(e.identifier, 'MATLAB:integerOverflow')
      warning('Integer overflow detected. Result might be inaccurate.');
      result = realmax('double'); % Or other appropriate handling
    elseif strcmp(e.identifier, 'myFunction:inputError')
       %This section will handle any errors you explicitly throw
       %in this case, you throw an error in the if condition
       rethrow(e);
    else
      % Log the error for debugging purposes
      fprintf('An unexpected error occurred: %s\n', e.message);
      rethrow(e);
    end
  end
end

function output = someCalculation(x)
  try
    output = x^2; 
  catch e
    if strcmp(e.identifier, 'MATLAB:integerOverflow')
      warning('Integer overflow detected in someCalculation. Result might be inaccurate.');
      output = realmax('double');
    else
       rethrow(e);
    end
  end
end
```