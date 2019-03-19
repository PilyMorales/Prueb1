function  [beta,J_history,beta_history] = calcGradient(beta,alpha,m,X,y,numIte)


betaTemp = zeros(2,1);
beta_history = zeros(numIte,2);
J_history =zeros(numIte,1);

for j = 1:1:numIte
    for i = 1:1:2,
        
        h_beta = hipotesis(X,beta);
        betaTemp(i) = beta(i) - (alpha/(m))*(sum((h_beta - y).*X(:,i)));
    end

beta = betaTemp;
beta_history(j,:) = beta;
%J_history(j,1) = costEval(m,X, y, beta);
end

clear betaTemp h_beta;