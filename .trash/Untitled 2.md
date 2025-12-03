```dataviewjs
// 1) Sirf "All Notes" folder ke pages lo
const pages = dv.pages('"All Notes"')
    .where(p => p.file.tasks && p.file.tasks.length > 0);

// 2) Har page ka title + uske tasks dikhाओ
for (let page of pages) {
    dv.header(3, page.file.name);   // Note ka naam as heading
    dv.taskList(page.file.tasks);   // Us note ke saare tasks
}
```