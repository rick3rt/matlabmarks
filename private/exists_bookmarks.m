function isconflict = exists_bookmarks(tag, folder)
    isconflict = 0;
    data = parse_bookmarks();
    if isempty(data)
        isconflict = 0;
        return
    end
    existing_folder = get_dir(data, tag);
    if ~isempty(existing_folder)
        isconflict = 1;
    end
end
