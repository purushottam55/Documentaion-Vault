
## Pinned Notes : 
```dataview
TABLE
from #pinned 
SORT file.name ASC
```


## Todays review Notes : 
```dataview
TABLE
from #review 
WHERE sr-due = date(today)
```


-----

# Staging 

## Incomplete Notes:
- Someday 

```dataview
TABLE
from #pending AND -#someday
```

## Pending Reading Notes :


```dataview
TABLE file.cday
FROM ""
WHERE contains(file.tags, "pendingRead")
   OR contains(file.tags, "readPending")
SORT file.cday ASC
```

----

# Captured today

```dataview
TABLE file.cday
WHERE file.cday = date(today)
```


------





View Guide : 
[[INF033-Learning Dataview Obsidian]]