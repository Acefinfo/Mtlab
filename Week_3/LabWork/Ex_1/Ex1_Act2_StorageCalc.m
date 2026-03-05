
Project_path = 'E:\Matlab\Week_3\LabWork\Ex_1';
cd(Project_path);  

% Calculate the storage required for uncompressed videos of varying resolutions (HD, 4K, Ultra HD).

resolutions = [	1920, 1080;     % HD
                3840, 2160;     % 4K 
                7680, 4320 ];   % Ultra HD
bit_depth = 8;      % Bit Depth
frame_rate = 30;    % Frames per second
duration = 5*60;   % Dutation

for i = 1:size(resolutions,1)
    width = resolutions(i,1);
    height = resolutions(i,2);
    bytes_per_pixel = 3;
    frame_size_bytes = width * height * bytes_per_pixel;
    frame_size_MB = frame_size_bytes/(1024^2);  % Convert to MB
    total_frames = duration * frame_rate;
    total_storage_MB = frame_size_MB * total_frames;
    total_storage_GB = total_storage_MB / 1024;  % Convert into GB
    fprintf('Resolution: %dx%d, Total Storage: %.2f GB\n', ...
            width, height, total_storage_GB);
end