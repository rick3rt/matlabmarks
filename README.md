# Bashmarks for Matlab
Path bookmarks for MATLAB. Inspired by https://github.com/huyng/bashmarks.

**With tab completion.** 

## Usage
```matlab
>> cd C:\some\long\and\hard\to\rememeber\path
>> s mybookmark
Stored bookmark: mybookmark --> C:\some\long\and\hard\to\rememeber\path

>> cd C:\projects\project1
>> s project1
Stored bookmark: project1 --> C:\projects\project1

>> l
Available bookmarks:
  mybookmark         -->  C:\some\long\and\hard\to\rememeber\path
  project1           -->  C:\projects\project1

>> g mybookmark         % start typing and use tab completion!
>> disp(pwd)
C:\some\long\and\hard\to\rememeber\path

```

## Matlab Commands
```matlab
>> s bookmark_name      % Saves the current directory as "bookmark_name"
>> g bookmark_name      % Goes (cd) to the directory associated with "bookmark_name"
>> e bookmark_name      % Opens the directory associated with "bookmark_name" in the file explorer (Windows only)
>> l                    % Lists all available bookmarks
>> d bookmark_name      % Deletes the bookmark 
```
