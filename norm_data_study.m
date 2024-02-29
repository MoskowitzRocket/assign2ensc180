function norm_data_study(data)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
%create histogram of data

h = histogram(data)
%find mean of data
mean_data = mean(data)
%find standard deviation of data
std_data = std(data,1)


%find amount within 1,2,3 times standard deviation
within_1_std = sum(abs(data - mean_data) <= std_data) / length(data)
within_2_std = sum(abs(data - mean_data) <= 2*std_data) / numel(data)
within_3_std = sum(abs(data - mean_data) <= 3*std_data) / numel(data)
std_probabilities = [within_1_std within_2_std within_3_std]

%find normal probabilities
norm_probabilities = [normcdf(1) - normcdf(-1), normcdf(2) - normcdf(-2), normcdf(3) - normcdf(-3)]

%find absolute error
abs_error = abs(norm_probabilities - std_probabilities)


end