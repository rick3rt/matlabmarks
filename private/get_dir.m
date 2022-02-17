function [path, n] = get_dir(data, bookmark)
    n = find(strcmp(data(:, 1), bookmark), 1);
    if isempty(n)
        path = [];
    else
        path = data{n, 2};
    end
end
