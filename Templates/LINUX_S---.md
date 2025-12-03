<%*
const fs = app.vault.adapter; 
const counterPath = "Templates/Sequences.md";

let seqDataRaw;
try { seqDataRaw = await fs.read(counterPath); } catch(e) { seqDataRaw = '{}'; }

let seqData;
try { seqData = JSON.parse(seqDataRaw); } catch(e) { seqData = {}; }

//-----------------add project key here

const projectKey = "LINUX_S"; 

//-----------------

let lastSeq = seqData[projectKey] || 0;
let newSeq = lastSeq + 1;

seqData[projectKey] = newSeq;
await fs.write(counterPath, JSON.stringify(seqData, null, 2));

const seqStr = String(newSeq).padStart(3,"0");
const date = tp.date.now("YYYYMMDD");
const today = tp.date.now("YYYY-MM-DD");

//-----------------Id and filename below👇 

const finalId = `${projectKey}${seqStr}`;

//-----------------

// Output frontmatter
tR = `---

created: ${today}

---
`;

// Filename will be
let new_name = finalId;
await tp.file.rename(new_name);
%>

#pending #stagging