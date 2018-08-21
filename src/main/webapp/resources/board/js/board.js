var control="";

var listpath;
var glistpath;
var clistpath;
var elistpath;
var mlistpath;
var viewpath;
var mviewpath;
var writepath;
var replypath;
var modifypath;
var deletepath;
var appviewpath;
var complitionpath;

function initPath(){
	listpath = control+"/list.kitri";
	glistpath = control+"/glist.kitri";
	clistpath = control+"/clist.kitri";
	elistpath = control+"/elist.kitri";
	mlistpath = control+"/mlist.kitri";
	appviewpath = control+"/appview.kitri";
	viewpath = control+"/view.kitri";
	mviewpath = control +"/mview.kitri";
	writepath = control+"/write.kitri";
	replypath = control+"/reply.kitri";
	modifypath = control+"/modify.kitri";
	deletepath = control+"/delete.kitri";
	complitionpath = control+"/complition.kitri";
}

function moveBoard(bcode, pg, key, word, path) {
	$("#bcode").val(bcode);
	$("#pg").val(pg);
	$("#key").val(key);
	$("#word").val(word);
	$("#commonform").attr("method", "get").attr("action", path).submit();
}