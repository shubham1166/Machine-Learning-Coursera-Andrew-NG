
data = load('ex1data1.txt');
X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters
y = data(:, 2);
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
disp(sum((X*theta - y).^2) / (2 * m))
function h=hypothesis(theta,X)
  h=X*theta;
endfunction
for i =1:1500
  z=hypothesis(theta,X)-y;
  temp0=theta(1)-(0.01*(1/m)*sum(z.*X(:,1)));
  temp1=theta(2)-(0.01*(1/m)*sum(z.*X(:,2)));
  theta(1)=temp0;
  theta(2)=temp1;
endfor
z=hypothesis(theta,X)-y;
z=z.^2;
k=1/(2*m);
J=k*sum(z);
disp(J);
