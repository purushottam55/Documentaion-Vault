


```dataview
TABLE
  file.link AS Note,
  file.folder AS Folder,
  file.tags AS Tags,
  file.ctime AS Created,
  file.mtime AS Modified,
  file.size AS Size,
  length(file.inlinks) AS Inlinks,
  length(file.outlinks) AS Outlinks,
  length(file.tasks) AS Tasks,
  length(file.lists) AS ListItems,
  file.aliases AS Aliases
WHERE startswith(file.folder, "All Notes")
SORT file.mtime DESC
```