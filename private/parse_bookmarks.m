function data = parse_bookmarks()
    % read bookmarks file and output as n-by-2 cell array
    p = fileparts(mfilename('fullpath')); % get dir of bashmarks project
    f = fullfile(p, '../bookmarks');
    % read file
    fD = fopen(f);
    if fD < 0
        fD = fopen(fm 'w+');
    end
    data = textscan(fD, '%s %s');
    fclose(fD);
    % repack a bit
    data = [data{1}, strrep(data{:, 2}, '"', '')];
end
