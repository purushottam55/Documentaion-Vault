# OCP Notes

```dataview
TABLE 
    file.mtime AS Modified
WHERE startswith(file.name, "OCP")
SORT file.name ASC
```


# Linux Notes

```dataview
TABLE 
    file.mtime AS Modified
// FROM "All Notes"
WHERE startswith(file.name, "ST")
SORT file.name ASC
```


# Forex Notes

```dataview
TABLE 
    file.mtime AS Modified
//FROM "All Notes"
WHERE startswith(file.name, "FOREX")
SORT file.name ASC
```


# Staging/Pending Notes

```dataview
TABLE 
    file.mtime AS Modified
// FROM "All Notes"
WHERE startswith(file.name, "INF")
SORT file.name ASC
```

