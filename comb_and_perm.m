clear all
close all
clc

%create empty arrays to load data into as it is calculated
n_results = [];
k_results = [];
c_nk = [];
p_nk = [];

%n = 2:5
for n = 2:5
    %k = 0:n for each n so we loop through for each n value
    for k = 0:n
        %combination values
        combination = nchoosek(n,k);
        %P(n,k)
        permutations = factorial(n)/factorial(n-k);
        %load results into empty arrays
        n_results = [n_results; n];
        k_results = [k_results; k];
        c_nk = [c_nk; combination];
        p_nk = [p_nk; permutations];
        
    end
end
%create table of results with proper names.
T = table(n_results,k_results,c_nk,p_nk,'VariableNames',{'n','k','C(n,k)','P(n,k)'});


disp(T);


