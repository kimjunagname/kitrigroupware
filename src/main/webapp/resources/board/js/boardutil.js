var control;

var listpath;
var viewpath;
var writepath;
var replypath;
var modifypath;
var deletepath;

function initPath() {
	listpath = control + "/list.kitri"
	viewpath = control + "/view.kitri"
	writepath = control + "/write.kitri"
	replypath = control + "/reply.kitri"
	modifypath = control + "/modify.kitri"
	deletepath = control + "/delete.kitri"
}

function moveBoard(ntc_div_sq,ntc_div_nm,ntc_sq, pg, key, word, path) {
	$("#ntc_div_sq").val(ntc_div_sq);
	$("#ntc_div_nm").val(ntc_div_nm);
	$("#ntc_sq").val(ntc_sq);
	$("#pg").val(pg);
	$("#key").val(key);
	$("#word").val(word);
	$("form[name='commonform']").attr("method","GET").attr("action",path).submit();	
}