function l()
    data = parse_bookmarks();
    padl = max(cellfun(@length, data(:, 1)));
    data = sortrows(data);
    fprintf('Available bookmarks:\n');
    for r = 1:size(data, 1)
        fprintf('  %s  -->  %s\n', pad(data{r, 1}, padl), data{r, 2})
    end
end
