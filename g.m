function g(input)
    data = parse_bookmarks();
    folder = get_dir(data, input);
    if isempty(folder)
        error('g:dontknowfolder', 'Dont know that tag, use command `l` to list all folders.')
    else
        cd(folder);
    end
end
