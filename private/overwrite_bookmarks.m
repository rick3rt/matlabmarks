function overwrite_bookmarks(data)
    % rewrite bookmarks file
    p = fileparts(mfilename('fullpath')); % get dir of bashmarks project
    f = fullfile(p, '../bookmarks');

    % open file, overwrite mode
    fD = fopen(f, 'w');

    for r = 1:size(data, 1)
        tag = data{r, 1};
        folder = data{r, 2};
        fprintf(fD, '%s,%s\n', tag, folder);
    end

    fclose(fD);
    % update functionSignates
    create_functionSignatures();
end
