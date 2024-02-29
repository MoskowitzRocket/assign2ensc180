clear all
close all
clc

n_results = [];
k_results = [];
c_nk = [];
p_nk = [];

for n = 2:5
    for k = 0:n

        combination = nchoosek(n,k);

        permutations = factorial(n)/factorial(n-k);

        n_results = [n_results; n];
        k_results = [k_results; k];
        c_nk = [c_nk; combination];
        p_nk = [p_nk; permutations];
        
    end
end

T = table(n_results,k_results,c_nk,p_nk,'VariableNames',{'n','k','C(n,k)','P(n,k)'});


disp(T);
%test

