function e(input)
    data = parse_sdirs();
    folder = get_dir(data, input);
    if isempty(folder)
        error('e:dontknowfolder', 'Dont know that tag, use command `l` to list all folders.')
    else
        if ispc
            system(['explorer ' folder]);
        else
            error('e:notsupported', 'Open folder in file explorer not supported on your system.')
        end
    end
end
