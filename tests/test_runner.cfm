<!--- the cfunit test runner for *Test.cfc files --->
<cfset testClasses = ArrayNew(1)>

<cfdirectory action="list" directory="#getDirectoryFromPath(getCurrentTemplatePath())#" name="test" filter="*Test.cfc">
<!--- get base .notation --->
<cfset package = listdeleteAt(cgi.script_name, listlen(cgi.script_name, "/"), "/")>
<cfset package = replace(package, "/", ".", "all")>
<cfset package = replace(package,".","")>

<cfloop query="test">
	<cfset ArrayAppend(testClasses, "#package#.#listfirst(name,'.')#")>
</cfloop>
<cfset suite = CreateObject("component", "net.sourceforge.cfunit.framework.TestSuite").init( testClasses )>

<cfoutput>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Unit Tests for scriptaGulous</title>
</head>

<body>
<h1>scriptaGulous Unit Tests</h1>

<cfscript>
	createobject("component", "net.sourceforge.cfunit.framework.TestRunner").run(suite,'');
</cfscript>
 
</body>
</html>
</cfoutput>