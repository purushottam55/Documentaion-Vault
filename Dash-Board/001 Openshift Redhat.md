# OCP Notes

```dataview
TABLE 
    file.mtime AS Modified
WHERE startswith(file.name, "OCP")
SORT file.name ASC
```


# Staging/Pending OCP
```dataview
TABLE
    file.mtime AS Modified
FROM #pending OR #readPending 
WHERE startswith(file.name, "OCP")
SORT file.name ASC

```