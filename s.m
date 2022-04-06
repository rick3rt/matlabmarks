function s(input)
    newdir = pwd;
    append_bookmarks(input, newdir);
    fprintf('Stored bookmark: %s --> %s\n', input, newdir);
end
