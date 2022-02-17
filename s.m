function s(input)
    newdir = pwd;
    append_sdirs(input, newdir);
    fprintf('Stored bookmark: %s --> %s\n', input, newdir);
end
