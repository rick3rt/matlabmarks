function data = parse_sdirs()
    % read sdirs file and output as n-by-2 cell array
    p = fileparts(mfilename('fullpath')); % get dir of bashmarks project
    f = fullfile(p, '../sdirs');
    % read file
    fD = fopen(f);
    data = textscan(fD, '%s %s');
    fclose(fD);
    % repack a bit
    data = [data{1} data{2}];
end
