function append_bookmarks(tag, folder)
    % read bookmarks file and output as n-by-2 cell array
    p = fileparts(mfilename('fullpath')); % get dir of bashmarks project
    f = fullfile(p, '../bookmarks');

    if ~exists_bookmarks(tag, folder)
        % read file
        fD = fopen(f, 'a+');
        % check if last character is newline
        fseek(fD, -1, 'eof');
        c = fread(fD);
        if c ~= 10 % newline \n == 10
            fprintf(fD, '\n');
        end
        % and append
        fprintf(fD, '%s,%s\n', tag, folder);
        fclose(fD);

        % update functionSignates
        create_functionSignatures();

    else
        error('matlabmarks:append_bookmarks:append', 'Did not append because bookmark already exists.')
    end
end
