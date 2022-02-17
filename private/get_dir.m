function [path, n] = get_dir(data, tag)
    n = find(strcmp(data(:, 1), tag), 1);
    if isempty(n)
        path = [];
    else
        path = data{n, 2};
    end
end
