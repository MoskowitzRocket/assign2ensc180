function norm_data_study(data)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
histogram(data)

mean_data = mean(data)
std_data = std(data,1)

within_1_std = sum(abs(data - mean_data) <= std_data) / length(data)
within_2_std = sum(abs(data - mean_data) <= 2*std_data) / numel(data)
within_3_std = sum(abs(data - mean_data) <= 3*std_data) / numel(data)
std_probabilities = [within_1_std within_2_std within_3_std]


norm_probabilities = [normcdf(1) - normcdf(-1), normcdf(2) - normcdf(-2), normcdf(3) - normcdf(-3)]

abs_error = abs(norm_probabilities - std_probabilities)


end