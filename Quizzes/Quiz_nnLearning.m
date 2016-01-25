% Machine Learning

% Quiz on Neural Networks - learning

% Q2
Theta1=ones(5,3)
Theta2=ones(4,6)*2
thetaVec=[Theta1(:);Theta2(:)]

reshape(thetaVec(16:39),4,6)

% Q3


J=inline('3*theta^4 +4')
dJ=inline('12*theta^3')
theta=1
epsilon=0.01
(J(theta+epsilon)-J(theta-epsilon))/(2*epsilon)
dJ(theta)
%J = 3*theta^4 +4
