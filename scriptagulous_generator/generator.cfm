<!--- 
	this file generates a starting point for scriptaGulous 
	and saves the results to the current directory in the file 
	"scriptagulous.cfm".  The actual working copy of scriptagulous.cfm
	resides in the scriptagulous subdirectory.
--->

<!--- get the tag data from xml file --->
<cfset tagsData = xmlparse("#expandPath('.')#\taglib.cftld")>
<cfset tags = XmlSearch(tagsData, "/taglib/tag")>
<!--- convert the tags to a more easily usable format (array of structs)--->
<cfloop from="1" to="#arrayLen(tags)#" index="i">
	<cfset curTag = structNew()>
	<cfset curTag.name = tags[i].name.xmlText>
	<!--- not every tag has info or body content, so we need to try/catch --->
	<cftry>
		<cfset curTag.hint = tags[i].info.xmlText>
		<cfcatch>
			<cfset curTag.hint = "Unknown">
		</cfcatch>
	</cftry>
	<cftry>
		<cfset curTag.bodyContent = tags[i].bodycontent.xmlText>
		<cfcatch>
			<cfset curTag.bodyContent = "Unknown">
		</cfcatch>
	</cftry>
	
	<cfset attributes = xmlSearch(xmlParse(toString(tags[i])), "/tag/attribute")>
	<cfloop from="1" to="#arrayLen(attributes)#" index="j">
		<cfset curAttribute=structNew()>
		<cfset curAttribute.name=attributes[j].name.xmlText>
		<cfset curAttribute.required=attributes[j].required.xmlText>
		<cfset attributes[j]=curAttribute>
	</cfloop>
	
	<cfset curTag.attributes = attributes>
	<cfset tags[i]=curTag>
</cfloop>

<!--- get the tags to exclude --->
<cfinclude template = "exclusionList.cfm">

<!--- create the functions --->
<cfoutput>
<cfsavecontent variable="functions">
<cfloop from="1" to="#arraylen(tags)#" index="i"><cfif not listfindnocase(exclusionList,"cf#tags[i].name#","#chr(13)##chr(10)#")><cfset theHint=replace(tags[i].hint,chr(13)," ","all")><cfset theHint=replace(theHint,chr(10),"","all")><cfset theHint=replace(theHint,'"',"''","all")>
&lt;cffunction name="cf#tags[i].name#" hint="#theHint#"><cfloop from="1" to="#arrayLen(tags[i].attributes)#" index="j">
	&lt;cfargument name="#tags[i].attributes[j].name#" required="#tags[i].attributes[j].required#" default=""></cfloop>
	
	&lt;cf#tags[i].name# <cfloop from="1" to="#arrayLen(tags[i].attributes)#" index="j">#tags[i].attributes[j].name#="##arguments.#tags[i].attributes[j].name###"<cfif j is not arrayLen(tags[i].attributes)>#chr(13)##chr(10)#		</cfif></cfloop>> 	
	<cfif tags[i].bodyContent is "JSP">&lt;/cf#tags[i].name#></cfif>
&lt;/cffunction>		
</cfif>

</cfloop>
</cfsavecontent>

<!--- clean the functions so they look good and are syntactically correct --->
<cfset functions = replace(functions,"&lt;","<","all")>
<cfset functions = replace(functions,"&gt;",">","all")>
<cfset functions = replace(functions,"  "," ","all")>
<cfset functions = replace(functions,"  "," ","all")>
<cfset functions = trim(functions)>

<!--- write the functions to the file and show success --->
<cffile action="write" file="#expandPath('.')#\scriptagulous.cfm" output="#functions#">
scriptagulous.cfm created successfully.
</cfoutput>