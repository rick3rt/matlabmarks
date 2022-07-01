function e(input)
    % Opens the directory associated with <bookmark> in the file explorer (Windows only)
    data = parse_bookmarks();
    folder = get_dir(data, input);
    if isempty(folder)
        error('matlabmarks:e:unknownbookmark', 'Dont know that bookmark, use command `l` to list all bookmarks.')
    else
        if ispc
            system(['explorer ' folder]);
        else
            error('matlabmarks:e:notsupported', 'Open folder in file explorer not supported on your system.')
        end
    end
end
