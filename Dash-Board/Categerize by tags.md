
## A-Z tags in "All Notes"

```dataview
TABLE rows.file.link AS Notes
FLATTEN file.tags AS tag
WHERE tag 
GROUP BY tag
SORT tag ASC
```


## By leangth tags in - All Notes

```dataview
TABLE rows.file.link AS Notes
FLATTEN file.tags AS tag
WHERE tag AND startswith(file.folder, "All Notes")
GROUP BY tag
SORT length(rows) DESC
```