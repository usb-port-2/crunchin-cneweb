function onDadHit(e){e.characters = strumLines.members[e.noteType == "GF Sing" ? 2 : 0].characters; if(!e.note.isSustainNote && curCameraTarget != 1) curCameraTarget = strumLines.members.indexOf(e.note.strumLine);}
function onNoteCreation(e) if(!e.note.isSustainNote && e.noteType != null) e.noteSprite = "game/notes/" + e.noteType;
function onPlayerMiss(e) if(e.noteType != null && e.noteType != "GF Sing"){e.cancel(); e.animCancelled = true; strumLines.members[e.playerID].deleteNote(e.note);}
function onPlayerHit(e) if(e.noteType != null) health /= 2; // temp, until i do the mechanics