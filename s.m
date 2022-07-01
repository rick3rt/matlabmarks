function s(input)
    % Saves the current directory as <bookmark>
    newdir = pwd;
    append_bookmarks(input, newdir);
    fprintf('Stored bookmark: %s --> %s\n', input, newdir);
end
