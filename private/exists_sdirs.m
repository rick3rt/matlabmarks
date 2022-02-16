function isconflict = exists_sdirs(tag, folder)
    isconflict = 0;
    data = parse_sdirs();
    existing_folder = get_dir(data, tag);
    if ~isempty(existing_folder)
        isconflict = 1;
    end
end
