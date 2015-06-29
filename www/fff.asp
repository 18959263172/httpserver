<HTML><HEAD><TITLE>Time Setting</TITLE>
<link rel="stylesheet" href="/style/normal_ws.css" type="text/css">
<SCRIPT language=JavaScript>
function js_getObjectByNameFromForm( form, name )
{
for ( var i = 0 ; i < form.length ; i++ ) {
if ( form[ i ].name == name ) {
return( form[ i ] ) ;
}
}
return( null ) ;
}
function clickedSetButton(form)
{
var date;
var year;
var mon;
var day;
var hour;
var min;
var sec;
year = js_getObjectByNameFromForm(form, "year");
mon = js_getObjectByNameFromForm(form, "month");
day = js_getObjectByNameFromForm(form, "day");
hour = js_getObjectByNameFromForm(form, "hour");
min = js_getObjectByNameFromForm(form, "minute");
sec = js_getObjectByNameFromForm(form, "second");
date = new Date();
year.value = date.getFullYear();
mon.value = date.getMonth()+1;
day.value = date.getDate();
hour.value = date.getHours();
min.value = date.getMinutes();
sec.value = date.getSeconds();
return false;
}
</SCRIPT>
<SCRIPT language=JavaScript>
</SCRIPT>
</HEAD>
<BODY text=#000000 vLink=#000080 aLink=#000080 link=#000080 bgColor=#FFFFFF onload="">
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR align=left>
<TD  vAlign=bottom><FONT  size=+2><STRONG><h1> 设 置 终 端 时 间
</h1></STRONG></FONT></TD>
<TR>
</TR></TBODY></TABLE>
<P>
</P>
<FORM action=/goform/formSetTermTime method=POST>
<TABLE>
<TBODY>
<TR>
<% GetTermTime(); %>
</TR>
</TBODY>
</TABLE><BR>
<INPUT onClick="location.reload()" type=button value= 获取终端时间 name=reloadp>
<INPUT onclick="" type=submit value= 设置终端时间 name=Modify>
<INPUT onclick="clickedSetButton(form);" type=button value=" 获取本地时间 " name=B2>
</FORM>
</BODY></HTML>