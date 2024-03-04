function data = parse_bookmarks()
    % read bookmarks file and output as n-by-2 cell array
    p = fileparts(mfilename('fullpath')); % get dir of bashmarks project
    f = fullfile(p, '../bookmarks');
    % read file
    %fD = fopen(f);
    %if fD < 0
    %    fD = fopen(f, 'w+');
    %end
    %data = textscan(fD, '%s %s');
    if ~isfile(f); fid = fopen(f, 'w+'); fclose(fid); end
    data = read_bookmarks(f);
    % data = readmatrix(f, 'FileType', 'text', 'OutputType', 'char');
    %fclose(fD);
    % repack a bit
    % data = [data{1}, strrep(data{:, 2}, '"', '')];
end


function data = read_bookmarks(fpath)

    text = fileread(fpath);
    data = split(text); % split in newlines
    data(cellfun(@isempty,data)) = []; % remove all empty lines
    data = split(data, ',');

end