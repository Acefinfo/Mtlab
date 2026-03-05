Project_path = 'E:\Matlab\Week_3\LabWork\Ex_1';
cd(Project_path);  

% Calculate the storage required for an RGB video of 5 minutes without compression, given the resolution, bit depth, and frame rate 
resolution = [512,512];
bit_depth = 8;
frame_rate = 30; 
duration = 5*60;


bytes_per_pixel = 3; % RGB channels
frame_size_bytes = resolution(1) *resolution(2)*bytes_per_pixel;
frame_size_MB = frame_size_bytes / (1024^2); % Convert to MB
disp(['Size of one frame: ', num2str(frame_size_MB), ' MB']);

total_frames = duration * frame_rate;
disp(['Total number of frames: ', num2str(total_frames)]);

total_storage_MB = frame_size_MB *total_frames;
total_storage_GB = total_storage_MB / 1024; % Convert to GB
disp(['Total storage required: ', num2str(total_storage_GB), ' GB']);
