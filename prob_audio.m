
%load sound and play it

load handel.mat
sound(y, Fs);

%plot the data from the audio sample
plot(y)

%create new figure and plot specific segment of audio sample for improved
%clarity
figure();
plot(y(4000:4300))

%create new figure and call norm_dist_study of the audio sample
figure();
norm_data_study(y)
