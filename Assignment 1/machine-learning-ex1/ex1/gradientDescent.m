function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
function h=hypothesis(theta,X)
  h=X*theta;
endfunction

%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    %z=hypothesis(theta,X)-y;
    %temp0=theta(1)-(alpha*sum(z.*X(:,1))/m);
    %temp1=theta(2)-(alpha*sum(z.*X(:,2))/m);
    %theta(1)=temp0;
    %theta(2)=temp1;
    theta = theta - alpha*(X'*(X*theta - y))/(length(y));
   

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
end

end
