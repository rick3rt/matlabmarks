function d(input)
    % Delete a bookmark
    data = parse_bookmarks();
    [folder, n] = get_dir(data, input);
    if isempty(folder)
        error('matlabmarks:d:unknownbookmark', 'Dont know that bookmark, use command `l` to list all folders.')
    else
        data(n, :) = [];
        overwrite_bookmarks(data);
    end
    fprintf('Deleted bookmark: %s --> %s \n', input, folder);
end
