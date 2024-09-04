function onDadHit(e){
    e.characters = strumLines.members[e.noteType == "GF Sing" ? 2 : 0].characters;
    if (!e.note.isSustainNote && curCameraTarget != 1)
        curCameraTarget = strumLines.members.indexOf(e.note.strumLine);
}

function onNoteCreation(e)
    if(!e.note.isSustainNote && e.noteType != "")
        e.noteSprite = "game/notes/" + e.noteType;