function d(input)
    data = parse_sdirs();
    [folder, n] = get_dir(data, input);
    if isempty(folder)
        error('d:dontknowfolder', 'Dont know that tag, use command `l` to list all folders.')
    else
        data(n, :) = [];
        overwrite_sdirs(data);
    end
end
