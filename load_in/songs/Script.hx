function onDadHit(e)
    e.characters = strumLines.members[e.noteType == "GF Sing" ? 2 : 0].characters;

function onNoteHit(e)
    if (!e.note.isSustainNote)
        curCameraTarget = strumLines.members.indexOf(e.note.strumLine);