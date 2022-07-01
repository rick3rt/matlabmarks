function g(input)
    % cd to the directory associated with <bookmark>
    data = parse_bookmarks();
    folder = get_dir(data, input);
    if isempty(folder)
        error('matlabmarks:d:unknownbookmark', 'Dont know that bookmark, use command `l` to list all folders.')
    else
        cd(folder);
    end
end
