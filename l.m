function l()
    data = parse_sdirs();
    padl = max(cellfun(@length, data(:, 1)));

    for r = 1:size(data, 1)
        fprintf('  %s  -->  %s\n', pad(data{r, 1}, padl), data{r, 2})
    end
end
