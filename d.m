function d(input)
    data = parse_bookmarks();
    [folder, n] = get_dir(data, input);
    if isempty(folder)
        error('d:dontknowfolder', 'Dont know that bookmark, use command `l` to list all folders.')
    else
        data(n, :) = [];
        overwrite_bookmarks(data);
    end
end
