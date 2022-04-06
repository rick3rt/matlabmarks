function create_functionSignatures()

    % get tags
    data = parse_bookmarks();
    tags = data(:, 1);

    % get path to functionSignatures.json
    p = fileparts(mfilename('fullpath')); % get dir of bashmarks project
    fjson = fullfile(p, '../functionSignatures.json');
    ftemp = fullfile(p, 'functionSignatures.template');

    % read template
    template = fileread(ftemp);

    % and fill it
    tags = cellfun(@(x) strcat('''', x, ''''), tags, 'UniformOutput', false);
    str = ['{' strjoin(tags, ',') '}'];
    json = strrep(template, 'TAGS', str);
    % open file, overwrite mode
    fD = fopen(fjson, 'w');
    fprintf(fD, '%s', json);
    fclose(fD);

end
