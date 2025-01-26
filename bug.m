```matlab
function result = myFunction(input)
  % Some code here...
  if input < 0
    result = -1;  % Error handling: negative input
    return
  end

  % ... more code that might throw an error if input is not a number...
  result = someCalculation(input);

end

function output = someCalculation(x)
  % This function might throw an error if x is not a number or is too large
  output = x^2; 
  %Example error: if x is too large, it might cause an overflow error
end
```