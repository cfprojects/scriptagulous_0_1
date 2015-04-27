<cffunction name="cfFormGroup" hint="This is the <CFFORMGROUP> tag used to define the grouping of form elements in flash forms and xform xml forms">
	<cfargument name="type" required="true" default="">
	<cfargument name="label" required="false" default="">
	<cfargument name="width" required="false" default="">
	<cfargument name="startrow" required="false" default="">
	<cfargument name="maxrows" required="false" default="">
	<cfargument name="height" required="false" default="">
	<cfargument name="query" required="false" default="">
	<cfargument name="attributecollection" required="false" default="">
	
	<cfFormGroup type="#arguments.type#"
		label="#arguments.label#"
		width="#arguments.width#"
		startrow="#arguments.startrow#"
		maxrows="#arguments.maxrows#"
		height="#arguments.height#"
		query="#arguments.query#"
		attributecollection="#arguments.attributecollection#"> 	
	</cfFormGroup>
</cffunction>		



<cffunction name="cfFormItem" hint="This is the <CFFORMITEM> tag used to define the grouping of form elements in flash forms and xform xml forms">
	<cfargument name="type" required="false" default="">
	<cfargument name="width" required="false" default="">
	<cfargument name="height" required="false" default="">
	<cfargument name="attributecollection" required="false" default="">
	
	<cfFormItem type="#arguments.type#"
		width="#arguments.width#"
		height="#arguments.height#"
		attributecollection="#arguments.attributecollection#"> 	
	</cfFormItem>
</cffunction>		



<cffunction name="cfNTAuthenticate" hint="Perform NT specify operations, including: authentication Copyright (c) 1995-2005 Macromedia. All Rights Reserved. DO NOT REDISTRIBUTE THIS SOFTWARE IN ANY WAY WITHOUT THE EXPRESSED WRITTEN PERMISSION OF MACROMEDIA.">
	<cfargument name="username" required="true" default="">
	<cfargument name="password" required="true" default="">
	<cfargument name="domain" required="true" default="">
	<cfargument name="result" required="false" default="">
	<cfargument name="listGroups" required="false" default="">
	<cfargument name="throwOnError" required="false" default="">
	
	<cfNTAuthenticate username="#arguments.username#"
		password="#arguments.password#"
		domain="#arguments.domain#"
		result="#arguments.result#"
		listGroups="#arguments.listGroups#"
		throwOnError="#arguments.throwOnError#"> 	
	
</cffunction>		



<cffunction name="cfReport" hint="This tag is the interface to CFML Report Engine. This class provides the new report features. If the tag attribute template is not, then all the work is passed to the parent class OldReportTag.">
	<cfargument name="type" required="false" default="">
	<cfargument name="orderby" required="false" default="">
	<cfargument name="username" required="false" default="">
	<cfargument name="password" required="false" default="">
	<cfargument name="formula" required="false" default="">
	<cfargument name="report" required="false" default="">
	<cfargument name="template" required="false" default="">
	<cfargument name="fileName" required="false" default="">
	<cfargument name="format" required="false" default="">
	<cfargument name="overWrite" required="false" default="">
	<cfargument name="query" required="true" default="">
	<cfargument name="dataSource" required="false" default="">
	<cfargument name="name" required="false" default="">
	<cfargument name="encryption" required="false" default="">
	<cfargument name="ownerpassword" required="false" default="">
	<cfargument name="userpassword" required="false" default="">
	<cfargument name="permissions" required="false" default="">
	<cfargument name="timeout" required="false" default="">
	<cfargument name="params" required="false" default="#structNew()#" hint="A structure containing name/value pairs for cfreportparam tags.">
	<cfif arguments.report is not "">
		<!--- crystal reports version --->
		<cfReport report="#arguments.report#"
			type="#arguments.type#"
			<!--- timeout="#arguments.timeout#" says it does not allow it, but then says it is one of the valid attributes? --->
			orderby="#arguments.orderby#"
			username="#arguments.username#"
			password="#arguments.password#"
			formula="#arguments.formula#"
			dataSource="#arguments.dataSource#"></cfReport>
			
	<cfelse>
		<!--- params version --->
		<cfReport 
			template="#arguments.template#"
			fileName="#arguments.fileName#"
			format="#arguments.format#"
			overWrite="#arguments.overWrite#"
			query="#arguments.query#"
			name="#arguments.name#"
			encryption="#arguments.encryption#"
			ownerpassword="#arguments.ownerpassword#"
			userpassword="#arguments.userpassword#"
			permissions="#arguments.permissions#">
			<cfloop collection="#arguments.params#" item="i">
				<cfreportparam name="#i#" value="#params[i]#">
			</cfloop>	
		</cfReport> 	
	</cfif>
</cffunction>		



<cffunction name="cfSearch" hint="CFSearchTag The CFSearch tag allows you to execute searches against data indexed in Verity collections..">
	<cfargument name="collection" required="true" default="">
	<cfargument name="name" required="true" default="">
	<cfargument name="type" required="false" default="">
	<cfargument name="criteria" required="false" default="">
	<cfargument name="previousCriteria" required="false" default="">
	<cfargument name="maxrows" required="false" default="">
	<cfargument name="startrow" required="false" default="">
	<cfargument name="language" required="false" default="">
	<cfargument name="external" required="false" default="">
	<cfargument name="status" required="false" default="">
	<cfargument name="contextPassages" required="false" default="">
	<cfargument name="contextBytes" required="false" default="">
	<cfargument name="contextHighlightBegin" required="false" default="">
	<cfargument name="contextHighlightEnd" required="false" default="">
	<cfargument name="suggestions" required="false" default="">
	<cfargument name="category" required="false" default="">
	<cfargument name="categorytree" required="false" default="">

	<cfset var result = "">
	<cfSearch collection="#arguments.collection#"
		name="result"
		type="#arguments.type#"
		criteria="#arguments.criteria#"
		previousCriteria="#arguments.previousCriteria#"
		maxrows="#arguments.maxrows#"
		startrow="#arguments.startrow#"
		language="#arguments.language#"
		external="#arguments.external#"
		status="#arguments.status#"
		contextPassages="#arguments.contextPassages#"
		contextBytes="#arguments.contextBytes#"
		contextHighlightBegin="#arguments.contextHighlightBegin#"
		contextHighlightEnd="#arguments.contextHighlightEnd#"
		suggestions="#arguments.suggestions#"
		category="#arguments.category#"
		categorytree="#arguments.categorytree#"> 	
	<cfreturn result>
</cffunction>		



<cffunction name="cfabort" hint="Stop processing of a page at this tag location, either by returning or by throwing an exception. This tag is often used with conditional logic to stop processing a page when a condition occurs.">
	<cfargument name="showerror" required="false" default="">

	<cfabort showerror="#arguments.showerror#"> 	
</cffunction>		



<cffunction name="cfant" hint="Unknown">
	<cfargument name="target" required="false" default="">
	<cfargument name="buildFile" required="true" default="">
	<cfargument name="defaultDirectory" required="true" default="">
	<cfargument name="antHome" required="false" default="">
	<cfargument name="messages" required="false" default="">
	
	<cfant target="#arguments.target#"
		buildFile="#arguments.buildFile#"
		defaultDirectory="#arguments.defaultDirectory#"
		antHome="#arguments.antHome#"
		messages="#arguments.messages#"> 	
	</cfant>
</cffunction>		



<cffunction name="cfapplet" hint="This is the CFML APPLET used to output applets onto a page, that are defined in the cfadmin">
	<cfargument name="name" required="true" default="">
	<cfargument name="appletsource" required="false" default="">
	<cfargument name="height" required="false" default="">
	<cfargument name="width" required="false" default="">
	<cfargument name="vspace" required="false" default="">
	<cfargument name="hspace" required="false" default="">
	<cfargument name="align" required="false" default="">
	<cfargument name="notSupported" required="false" default="">
	<cfargument name="attributecollection" required="false" default="">
	
	<cfapplet name="#arguments.name#"
		appletsource="#arguments.appletsource#"
		height="#arguments.height#"
		width="#arguments.width#"
		vspace="#arguments.vspace#"
		hspace="#arguments.hspace#"
		align="#arguments.align#"
		notSupported="#arguments.notSupported#"
		attributecollection="#arguments.attributecollection#"> 	
	
</cffunction>		



<cffunction name="cfapplication" hint="Provide access to CFML application scope. in CF5 and earlier, applications must have a name. Neo supports this behavior by prefixing the application name onto the variable name. In addition, neo allows you to have an un-named application that maps directly to the ServletContext namespace, allowing sharing of existing variables. <p> Either way, java can share variables with a legacy cf application by prepending the application name onto the servlet context key name. For example, if a cf application is called ''myapp'', then in java/jsp you can get variables like so: <code> application.getAttribute(''myapp.variableName''); </code> Defines scoping for a ColdFusion application, enables or disables storing client variables, and specifies a client variable storage mechanism. By default, client variables are disabled. Also, enables session variables and sets timeouts for session and application variables. Session and application variables are stored in memory.">
	<cfargument name="setclientcookies" required="false" default="">
	<cfargument name="name" required="false" default="">
	<cfargument name="clientmanagement" required="false" default="">
	<cfargument name="setDomainCookies" required="false" default="">
	<cfargument name="clientstorage" required="false" default="">
	<cfargument name="sessionmanagement" required="false" default="">
	<cfargument name="sessiontimeout" required="false" default="">
	<cfargument name="applicationtimeout" required="false" default="">
	<cfargument name="loginstorage" required="false" default="">
	<cfargument name="scriptProtect" required="false" default="">
	
	<cfapplication setclientcookies="#arguments.setclientcookies#"
		name="#arguments.name#"
		clientmanagement="#arguments.clientmanagement#"
		setDomainCookies="#arguments.setDomainCookies#"
		clientstorage="#arguments.clientstorage#"
		sessionmanagement="#arguments.sessionmanagement#"
		sessiontimeout="#arguments.sessiontimeout#"
		applicationtimeout="#arguments.applicationtimeout#"
		loginstorage="#arguments.loginstorage#"
		scriptProtect="#arguments.scriptProtect#"> 	
	
</cffunction>		



<cffunction name="cfassociate" hint="Unknown">
	<cfargument name="basetag" required="true" default="">
	<cfargument name="datacollection" required="false" default="">
	
	<cfassociate basetag="#arguments.basetag#"
		datacollection="#arguments.datacollection#"> 	
	
</cffunction>		



<cffunction name="cfcalendar" hint="A standalone calendar tag that can be used in a flash form or standalone in an html form">
	<cfargument name="passthrough" required="false" default="">
	<cfargument name="attributecollection" required="false" default="">
	<cfargument name="height" required="false" default="">
	<cfargument name="firstDayOfWeek" required="false" default="">
	<cfargument name="mask" required="false" default="">
	<cfargument name="name" required="true" default="">
	<cfargument name="selectedDate" required="false" default="">
	<cfargument name="width" required="false" default="">
	<cfargument name="endRange" required="false" default="">
	<cfargument name="onChange" required="false" default="">
	<cfargument name="startRange" required="false" default="">
	<cfargument name="dayNames" required="false" default="">
	<cfargument name="monthNames" required="false" default="">
	<cfargument name="required" required="false" default="">
	
	<cfcalendar passthrough="#arguments.passthrough#"
		attributecollection="#arguments.attributecollection#"
		height="#arguments.height#"
		firstDayOfWeek="#arguments.firstDayOfWeek#"
		mask="#arguments.mask#"
		name="#arguments.name#"
		selectedDate="#arguments.selectedDate#"
		width="#arguments.width#"
		endRange="#arguments.endRange#"
		onChange="#arguments.onChange#"
		startRange="#arguments.startRange#"
		dayNames="#arguments.dayNames#"
		monthNames="#arguments.monthNames#"
		required="#arguments.required#"> 	
	</cfcalendar>
</cffunction>		



<cffunction name="cfchart" hint="cfchart">
	<cfargument name="style" required="false" default="">
	<cfargument name="name" required="false" default="">
	<cfargument name="format" required="false" default="">
	<cfargument name="chartHeight" required="false" default="">
	<cfargument name="chartWidth" required="false" default="">
	<cfargument name="scaleFrom" required="false" default="">
	<cfargument name="scaleTo" required="false" default="">
	<cfargument name="showXGridlines" required="false" default="">
	<cfargument name="showYGridlines" required="false" default="">
	<cfargument name="gridlines" required="false" default="">
	<cfargument name="seriesPlacement" required="false" default="">
	<cfargument name="foregroundColor" required="false" default="">
	<cfargument name="dataBackgroundColor" required="false" default="">
	<cfargument name="backgroundColor" required="false" default="">
	<cfargument name="showBorder" required="false" default="">
	<cfargument name="font" required="false" default="">
	<cfargument name="fontSize" required="false" default="">
	<cfargument name="fontBold" required="false" default="">
	<cfargument name="fontItalic" required="false" default="">
	<cfargument name="xAxisTitle" required="false" default="">
	<cfargument name="yAxisTitle" required="false" default="">
	<cfargument name="title" required="false" default="">
	<cfargument name="show3D" required="false" default="">
	<cfargument name="xOffset" required="false" default="">
	<cfargument name="yOffset" required="false" default="">
	<cfargument name="rotated" required="false" default="">
	<cfargument name="showLegend" required="false" default="">
	<cfargument name="labelFormat" required="false" default="">
	<cfargument name="labelMask" required="false" default="">
	<cfargument name="tipStyle" required="false" default="">
	<cfargument name="tipBGColor" required="false" default="">
	<cfargument name="showMarkers" required="false" default="">
	<cfargument name="markerSize" required="false" default="">
	<cfargument name="pieSliceStyle" required="false" default="">
	<cfargument name="url" required="false" default="">
	<cfargument name="sortXAxis" required="false" default="">
	<cfargument name="xAxisType" required="false" default="">
	<cfargument name="yAxisType" required="false" default="">
	<cfargument name="returnAsInputStream" required="false" default="">
	
	<cfchart style="#arguments.style#"
		name="#arguments.name#"
		format="#arguments.format#"
		chartHeight="#arguments.chartHeight#"
		chartWidth="#arguments.chartWidth#"
		scaleFrom="#arguments.scaleFrom#"
		scaleTo="#arguments.scaleTo#"
		showXGridlines="#arguments.showXGridlines#"
		showYGridlines="#arguments.showYGridlines#"
		gridlines="#arguments.gridlines#"
		seriesPlacement="#arguments.seriesPlacement#"
		foregroundColor="#arguments.foregroundColor#"
		dataBackgroundColor="#arguments.dataBackgroundColor#"
		backgroundColor="#arguments.backgroundColor#"
		showBorder="#arguments.showBorder#"
		font="#arguments.font#"
		fontSize="#arguments.fontSize#"
		fontBold="#arguments.fontBold#"
		fontItalic="#arguments.fontItalic#"
		xAxisTitle="#arguments.xAxisTitle#"
		yAxisTitle="#arguments.yAxisTitle#"
		title="#arguments.title#"
		show3D="#arguments.show3D#"
		xOffset="#arguments.xOffset#"
		yOffset="#arguments.yOffset#"
		rotated="#arguments.rotated#"
		showLegend="#arguments.showLegend#"
		labelFormat="#arguments.labelFormat#"
		labelMask="#arguments.labelMask#"
		tipStyle="#arguments.tipStyle#"
		tipBGColor="#arguments.tipBGColor#"
		showMarkers="#arguments.showMarkers#"
		markerSize="#arguments.markerSize#"
		pieSliceStyle="#arguments.pieSliceStyle#"
		url="#arguments.url#"
		sortXAxis="#arguments.sortXAxis#"
		xAxisType="#arguments.xAxisType#"
		yAxisType="#arguments.yAxisType#"
		returnAsInputStream="#arguments.returnAsInputStream#"> 	
	</cfchart>
</cffunction>		



<cffunction name="cfchartdata" hint="cfchartdata">
	<cfargument name="item" required="true" default="">
	<cfargument name="value" required="true" default="">
	
	<cfchartdata item="#arguments.item#"
		value="#arguments.value#"> 	
	</cfchartdata>
</cffunction>		



<cffunction name="cfchartseries" hint="cfchartseries">
	<cfargument name="type" required="true" default="">
	<cfargument name="query" required="false" default="">
	<cfargument name="itemColumn" required="false" default="">
	<cfargument name="valueColumn" required="false" default="">
	<cfargument name="seriesLabel" required="false" default="">
	<cfargument name="seriesColor" required="false" default="">
	<cfargument name="colorList" required="false" default="">
	<cfargument name="paintStyle" required="false" default="">
	<cfargument name="markerStyle" required="false" default="">
	<cfargument name="dataLabelStyle" required="false" default="">
	
	<cfchartseries type="#arguments.type#"
		query="#arguments.query#"
		itemColumn="#arguments.itemColumn#"
		valueColumn="#arguments.valueColumn#"
		seriesLabel="#arguments.seriesLabel#"
		seriesColor="#arguments.seriesColor#"
		colorList="#arguments.colorList#"
		paintStyle="#arguments.paintStyle#"
		markerStyle="#arguments.markerStyle#"
		dataLabelStyle="#arguments.dataLabelStyle#"> 	
	</cfchartseries>
</cffunction>		



<cffunction name="cfcol" hint="Defines table column header, width, alignment, and text. Used only inside a cftable.">
	<cfargument name="header" required="true" default="">
	<cfargument name="width" required="false" default="">
	<cfargument name="align" required="false" default="">
	<cfargument name="text" required="false" default="">
	
	<cfcol header="#arguments.header#"
		width="#arguments.width#"
		align="#arguments.align#"
		text="#arguments.text#"> 	
	
</cffunction>		



<cffunction name="cfcollection" hint="Tag implementaion for CFCollection tag, used to manage Verty collections">
	<cfargument name="action" required="false" default="">
	<cfargument name="name" required="false" default="">
	<cfargument name="collection" required="true" default="">
	<cfargument name="path" required="false" default="">
	<cfargument name="language" required="false" default="">
	<cfargument name="categories" required="false" default="">
	
	<cfcollection action="#arguments.action#"
		name="#arguments.name#"
		collection="#arguments.collection#"
		path="#arguments.path#"
		language="#arguments.language#"
		categories="#arguments.categories#"> 	
	
</cffunction>		



<cffunction name="cfcompile" hint="cfcompile">
	<cfargument name="srcDir" required="true" default="">
	<cfargument name="outDir" required="true" default="">
	<cfargument name="extensions" required="false" default="">
	<cfargument name="logFile" required="false" default="">
	<cfargument name="excludes" required="false" default="">
	
	<cfcompile srcDir="#arguments.srcDir#"
		outDir="#arguments.outDir#"
		extensions="#arguments.extensions#"
		logFile="#arguments.logFile#"
		excludes="#arguments.excludes#"> 	
	</cfcompile>
</cffunction>		



<cffunction name="cfcontent" hint="Defines the MIME type returned by the current page. Optionally, lets you specify the name of a file to be returned with the page.">
	<cfargument name="type" required="true" default="">
	<cfargument name="file" required="false" default="">
	<cfargument name="variable" required="false" default="">
	<cfargument name="reset" required="false" default="">
	<cfargument name="deletefile" required="false" default="">
	
	<cfif arguments.file is not "">
		<cfcontent type="#arguments.type#"
			file="#arguments.file#"
			reset="#arguments.reset#"
			deletefile="#arguments.deletefile#"> 	
	<cfelse>
		<cfcontent type="#arguments.type#"
			variable="#arguments.variable#"
			reset="#arguments.reset#"> 	
	</cfif>
</cffunction>		



<cffunction name="cfcookie" hint="Defines cookie variables, including expiration and security options.">
	<cfargument name="name" required="true" default="">
	<cfargument name="value" required="false" default="">
	<cfargument name="expires" required="false" default="">
	<cfargument name="secure" required="false" default="">
	<cfargument name="path" required="false" default="">
	<cfargument name="domain" required="false" default="">
	
	<cfcookie name="#arguments.name#"
		value="#arguments.value#"
		expires="#arguments.expires#"
		secure="#arguments.secure#"
		path="#arguments.path#"
		domain="#arguments.domain#"> 	
</cffunction>		



<cffunction name="cfdatasource" hint="Unknown">
	<cfargument name="name" required="true" default="">
	<cfargument name="type" required="true" default="">
	<cfargument name="database" required="false" default="">
	<cfargument name="ifxsrv" required="false" default="">
	<cfargument name="sid" required="false" default="">
	<cfargument name="server" required="true" default="">
	<cfargument name="username" required="false" default="">
	<cfargument name="password" required="false" default="">
	<cfargument name="desc" required="false" default="">
	<cfargument name="port" required="false" default="">
	<cfargument name="driver" required="false" default="">
	
	<cfdatasource name="#arguments.name#"
		type="#arguments.type#"
		database="#arguments.database#"
		ifxsrv="#arguments.ifxsrv#"
		sid="#arguments.sid#"
		server="#arguments.server#"
		username="#arguments.username#"
		password="#arguments.password#"
		desc="#arguments.desc#"
		port="#arguments.port#"
		driver="#arguments.driver#"> 	
	</cfdatasource>
</cffunction>		



<cffunction name="cfdatasourceallowedsql" hint="Defines the restricted SQL for a Dynamic Datasource">
	<cfargument name="select" required="false" default="">
	<cfargument name="create" required="false" default="">
	<cfargument name="grant" required="false" default="">
	<cfargument name="insert" required="false" default="">
	<cfargument name="drop" required="false" default="">
	<cfargument name="revoke" required="false" default="">
	<cfargument name="update" required="false" default="">
	<cfargument name="alter" required="false" default="">
	<cfargument name="storedProc" required="false" default="">
	<cfargument name="delete" required="false" default="">
	
	<cfdatasourceallowedsql select="#arguments.select#"
		create="#arguments.create#"
		grant="#arguments.grant#"
		insert="#arguments.insert#"
		drop="#arguments.drop#"
		revoke="#arguments.revoke#"
		update="#arguments.update#"
		alter="#arguments.alter#"
		storedProc="#arguments.storedProc#"
		delete="#arguments.delete#"> 	
	</cfdatasourceallowedsql>
</cffunction>		



<cffunction name="cfdatasourceconnection" hint="Passes SQL statements to a data source. Not limited to queries.">
	<cfargument name="database" required="false" default="">
	<cfargument name="sid" required="false" default="">
	<cfargument name="server" required="true" default="">
	<cfargument name="username" required="false" default="">
	<cfargument name="password" required="false" default="">
	<cfargument name="desc" required="false" default="">
	<cfargument name="port" required="false" default="">
	<cfargument name="driver" required="false" default="">
	
	<cfdatasourceconnection database="#arguments.database#"
		sid="#arguments.sid#"
		server="#arguments.server#"
		username="#arguments.username#"
		password="#arguments.password#"
		desc="#arguments.desc#"
		port="#arguments.port#"
		driver="#arguments.driver#"> 	
	</cfdatasourceconnection>
</cffunction>		



<cffunction name="cfdatasourcepooling" hint="Defines the pooling behavior of a Dynamic Datasource">
	<cfargument name="limitConnections" required="false" default="">
	<cfargument name="numberOfConnections" required="false" default="">
	<cfargument name="usePooledConnections" required="false" default="">
	<cfargument name="maxPooledStatements" required="false" default="">
	<cfargument name="expireIdleConnections" required="false" default="">
	<cfargument name="loginTimeout" required="false" default="">
	
	<cfdatasourcepooling limitConnections="#arguments.limitConnections#"
		numberOfConnections="#arguments.numberOfConnections#"
		usePooledConnections="#arguments.usePooledConnections#"
		maxPooledStatements="#arguments.maxPooledStatements#"
		expireIdleConnections="#arguments.expireIdleConnections#"
		loginTimeout="#arguments.loginTimeout#"> 	
	</cfdatasourcepooling>
</cffunction>		



<cffunction name="cfdirectory" hint="Handles interactions with directories.     NOTE: This tag currently uses InvalidTagAttributeException and MissingTagAttributeException. Some exceptions could be more specific. Please take a look at DirectoryNotFoundException as an illustration.">
	<cfargument name="action" required="false" default="">
	<cfargument name="recurse" required="false" default="">
	<cfargument name="directory" required="false" default="">
	<cfargument name="name" required="false" default="">
	<cfargument name="filter" required="false" default="">
	<cfargument name="sort" required="false" default="">
	<cfargument name="newdirectory" required="false" default="">
	<cfargument name="mode" required="false" default="">
	<cfargument name="listinfo" required="false" default="">
	
	<cfdirectory action="#arguments.action#"
		recurse="#arguments.recurse#"
		directory="#arguments.directory#"
		name="#arguments.name#"
		filter="#arguments.filter#"
		sort="#arguments.sort#"
		newdirectory="#arguments.newdirectory#"
		mode="#arguments.mode#"
		listinfo="#arguments.listinfo#"> 	
	
</cffunction>		



<cffunction name="cfdocument" hint="Converting CFML to Rich document Format">
	<cfargument name="format" required="true" default="">
	<cfargument name="filename" required="false" default="">
	<cfargument name="overwrite" required="false" default="">
	<cfargument name="name" required="false" default="">
	<cfargument name="pagetype" required="false" default="">
	<cfargument name="pagewidth" required="false" default="">
	<cfargument name="pageheight" required="false" default="">
	<cfargument name="orientation" required="false" default="">
	<cfargument name="margintop" required="false" default="">
	<cfargument name="marginbottom" required="false" default="">
	<cfargument name="marginleft" required="false" default="">
	<cfargument name="marginright" required="false" default="">
	<cfargument name="unit" required="false" default="">
	<cfargument name="backgroundvisible" required="false" default="">
	<cfargument name="fontembed" required="false" default="">
	<cfargument name="encryption" required="false" default="">
	<cfargument name="ownerpassword" required="false" default="">
	<cfargument name="userpassword" required="false" default="">
	<cfargument name="permissions" required="false" default="">
	<cfargument name="scale" required="false" default="">
	<cfargument name="src" required="false" default="">
	<cfargument name="srcfile" required="false" default="">
	<cfargument name="mimetype" required="false" default="">
	<cfargument name="sections" required="false" default="#arrayNew(1)#" hint="An array of structs where each index of the array represents a cfdocumentsection and each struct has the name/value pairs that equate to the attributes/values of the tag.">
	
	<cfif arguments.srcfile is not "">
		<cfdocument format="#arguments.format#"
			filename="#arguments.filename#"
			overwrite="#arguments.overwrite#"
			name="#arguments.name#"
			pagetype="#arguments.pagetype#"
			pagewidth="#arguments.pagewidth#"
			pageheight="#arguments.pageheight#"
			orientation="#arguments.orientation#"
			margintop="#arguments.margintop#"
			marginbottom="#arguments.marginbottom#"
			marginleft="#arguments.marginleft#"
			marginright="#arguments.marginright#"
			unit="#arguments.unit#"
			backgroundvisible="#arguments.backgroundvisible#"
			fontembed="#arguments.fontembed#"
			encryption="#arguments.encryption#"
			ownerpassword="#arguments.ownerpassword#"
			userpassword="#arguments.userpassword#"
			permissions="#arguments.permissions#"
			scale="#arguments.scale#"
			srcfile="#arguments.srcfile#"
			mimetype="#arguments.mimetype#">
			
			<cfloop from="1" to="#arraylen(arguments.sections)#" index="i">
				<cfif structKeyExists(arguments.sections[i],"src")>
					<cfdocumentsection margintop="#arguments.sections[i].margintop#"
						marginbottom="#arguments.sections[i].marginbottom#"
						marginleft="#arguments.sections[i].marginleft#"
						marginright="#arguments.sections[i].marginright#"
						src="#arguments.sections[i].src#"
						mimetype="#arguments.sections[i].mimetype#">
						
					</cfdocumentsection> 
				<cfelse>
					<cfdocumentsection margintop="#arguments.sections[i].margintop#"
						marginbottom="#arguments.sections[i].marginbottom#"
						marginleft="#arguments.sections[i].marginleft#"
						marginright="#arguments.sections[i].marginright#"
						srcfile="#arguments.sections[i].srcfile#"
						mimetype="#arguments.sections[i].mimetype#">
						
					</cfdocumentsection> 
				</cfif>
			</cfloop>				
				 	
		</cfdocument>
	<cfelse>
		<cfdocument format="#arguments.format#"
			filename="#arguments.filename#"
			overwrite="#arguments.overwrite#"
			name="#arguments.name#"
			pagetype="#arguments.pagetype#"
			pagewidth="#arguments.pagewidth#"
			pageheight="#arguments.pageheight#"
			orientation="#arguments.orientation#"
			margintop="#arguments.margintop#"
			marginbottom="#arguments.marginbottom#"
			marginleft="#arguments.marginleft#"
			marginright="#arguments.marginright#"
			unit="#arguments.unit#"
			backgroundvisible="#arguments.backgroundvisible#"
			fontembed="#arguments.fontembed#"
			encryption="#arguments.encryption#"
			ownerpassword="#arguments.ownerpassword#"
			userpassword="#arguments.userpassword#"
			permissions="#arguments.permissions#"
			scale="#arguments.scale#"
			src="#arguments.src#"
			mimetype="#arguments.mimetype#"> 	
				
			<cfloop from="1" to="#arraylen(arguments.sections)#" index="i">
				<cfif structKeyExists(arguments.sections[i],"src")>
					<cfdocumentsection margintop="#arguments.sections[i].margintop#"
						marginbottom="#arguments.sections[i].marginbottom#"
						marginleft="#arguments.sections[i].marginleft#"
						marginright="#arguments.sections[i].marginright#"
						src="#arguments.sections[i].src#"
						mimetype="#arguments.sections[i].mimetype#">
						
					</cfdocumentsection> 
				<cfelse>
					<cfdocumentsection margintop="#arguments.sections[i].margintop#"
						marginbottom="#arguments.sections[i].marginbottom#"
						marginleft="#arguments.sections[i].marginleft#"
						marginright="#arguments.sections[i].marginright#"
						srcfile="#arguments.sections[i].srcfile#"
						mimetype="#arguments.sections[i].mimetype#">
						
					</cfdocumentsection> 
				</cfif>
				
			</cfloop>	
		</cfdocument>
	</cfif>
</cffunction>		



<cffunction name="cfdocumentitem" hint="Converting CFML to Rich document Format">
	<cfargument name="type" required="true" default="">
	
	<cfdocumentitem type="#arguments.type#"> 	
	</cfdocumentitem>
</cffunction>		


<cffunction name="cferror" hint="Enables the display of customized HTML pages when errors occur. This lets you maintain a consistent look and feel within your application, even when errors occur.">
	<cfargument name="type" required="true" default="">
	<cfargument name="template" required="true" default="">
	<cfargument name="mailto" required="false" default="">
	<cfargument name="exception" required="false" default="">
	
	<cferror type="#arguments.type#"
		template="#arguments.template#"
		mailto="#arguments.mailto#"
		exception="#arguments.exception#"> 	
	
</cffunction>		



<cffunction name="cfexecute" hint="Executes a command in a separate process on the server.">
	<cfargument name="name" required="true" default="">
	<cfargument name="arguments" required="false" default="">
	<cfargument name="outputfile" required="false" default="">
	<cfargument name="timeout" required="false" default="">
	<cfargument name="variable" required="false" default="">
	<cfset var result = "">
	<cfif arguments.outputfile is not "">
		<cfexecute name="#arguments.name#"
			arguments="#arguments.arguments#"
			outputfile="#arguments.outputfile#"
			timeout="#arguments.timeout#">
		</cfexecute>
	<cfelse>
		<cfexecute name="#arguments.name#"
			arguments="#arguments.arguments#"
			timeout="#arguments.timeout#"
			variable="result"> 	
		</cfexecute>
		<cfreturn result>
	</cfif>
</cffunction>		



<cffunction name="cfexit" hint="Used to: <li> Abort the processing of the currently executing CFML custom tag. <li> Exit the template within the currently executing CFML custom tag <li> Reexecute a section of code within the currently executing CFML custom tag">
	<cfargument name="method" required="false" default="">
	
	<cfexit method="#arguments.method#"> 	
	
</cffunction>		



<cffunction name="cffile" hint="Handles all interactions with files. The attributes you use with cffile depend on the value of the action attribute.">
	<cfargument name="action" required="false" default="">
	<cfargument name="charset" required="false" default="">
	<cfargument name="accept" required="false" default="">
	<cfargument name="destination" required="false" default="">
	<cfargument name="filefield" required="false" default="">
	<cfargument name="nameconflict" required="false" default="">
	<cfargument name="mode" required="false" default="">
	<cfargument name="attributes" required="false" default="">
	<cfargument name="source" required="false" default="">
	<cfargument name="file" required="false" default="">
	<cfargument name="variable" required="false" default="">
	<cfargument name="output" required="false" default="">
	<cfargument name="addnewline" required="false" default="">
	<cfargument name="result" required="false" default="">
	<cfargument name="fixnewline" required="false" default="">
	
	<cffile action="#arguments.action#"
		charset="#arguments.charset#"
		accept="#arguments.accept#"
		destination="#arguments.destination#"
		filefield="#arguments.filefield#"
		nameconflict="#arguments.nameconflict#"
		mode="#arguments.mode#"
		attributes="#arguments.attributes#"
		source="#arguments.source#"
		file="#arguments.file#"
		variable="#arguments.variable#"
		output="#arguments.output#"
		addnewline="#arguments.addnewline#"
		result="#arguments.result#"
		fixnewline="#arguments.fixnewline#"> 	
	
</cffunction>		



<cffunction name="cfflush" hint="Flushes currently available data to the client. TODO - some servlet API methods (response.setHeader) silently fail when the response is already committed. In these cases, our tags need to check response.isCommitted() and throw an error, since the Servlet api won't do it.">
	<cfargument name="interval" required="false" default="">
	
	<cfflush interval="#arguments.interval#"> 	
	
</cffunction>		



<cffunction name="cfform" hint="CFFORM tag">
	<cfargument name="name" required="false" default="">
	<cfargument name="action" required="false" default="">
	<cfargument name="method" required="false" default="">
	<cfargument name="format" required="false" default="">
	<cfargument name="accessible" required="false" default="">
	<cfargument name="preserveData" required="false" default="">
	<cfargument name="passthrough" required="false" default="">
	<cfargument name="codebase" required="false" default="">
	<cfargument name="archive" required="false" default="">
	<cfargument name="scriptsrc" required="false" default="">
	<cfargument name="width" required="false" default="">
	<cfargument name="height" required="false" default="">
	<cfargument name="skin" required="false" default="">
	<cfargument name="style" required="false" default="">
	<cfargument name="onSubmit" required="false" default="">
	<cfargument name="onError" required="false" default="">
	<cfargument name="timeout" required="false" default="">
	<cfargument name="attributecollection" required="false" default="">
	
	<cfform name="#arguments.name#"
		action="#arguments.action#"
		method="#arguments.method#"
		format="#arguments.format#"
		accessible="#arguments.accessible#"
		preserveData="#arguments.preserveData#"
		passthrough="#arguments.passthrough#"
		codebase="#arguments.codebase#"
		archive="#arguments.archive#"
		scriptsrc="#arguments.scriptsrc#"
		width="#arguments.width#"
		height="#arguments.height#"
		skin="#arguments.skin#"
		style="#arguments.style#"
		onSubmit="#arguments.onSubmit#"
		onError="#arguments.onError#"
		timeout="#arguments.timeout#"
		attributecollection="#arguments.attributecollection#"> 	
	</cfform>
</cffunction>		



<cffunction name="cfftp" hint="File Transfer Protocol (FTP) operations.">
	<cfargument name="action" required="true" default="">
	<cfargument name="username" required="false" default="">
	<cfargument name="password" required="false" default="">
	<cfargument name="server" required="false" default="">
	<cfargument name="timeout" required="false" default="">
	<cfargument name="port" required="false" default="">
	<cfargument name="connection" required="false" default="">
	<cfargument name="proxyserver" required="false" default="">
	<cfargument name="proxybypass" required="false" default="">
	<cfargument name="retrycount" required="false" default="">
	<cfargument name="stoponerror" required="false" default="">
	<cfargument name="passive" required="false" default="">
	<cfargument name="name" required="false" default="">
	<cfargument name="asciiextensionlist" required="false" default="">
	<cfargument name="transfermode" required="false" default="">
	<cfargument name="failifexists" required="false" default="">
	<cfargument name="directory" required="false" default="">
	<cfargument name="localfile" required="false" default="">
	<cfargument name="remotefile" required="false" default="">
	<cfargument name="item" required="false" default="">
	<cfargument name="existing" required="false" default="">
	<cfargument name="new" required="false" default="">
	<cfargument name="debug" required="false" default="">
	<cfargument name="result" required="false" default="">
	
	<cfftp action="#arguments.action#"
		username="#arguments.username#"
		password="#arguments.password#"
		server="#arguments.server#"
		timeout="#arguments.timeout#"
		port="#arguments.port#"
		connection="#arguments.connection#"
		proxyserver="#arguments.proxyserver#"
		proxybypass="#arguments.proxybypass#"
		retrycount="#arguments.retrycount#"
		stoponerror="#arguments.stoponerror#"
		passive="#arguments.passive#"
		name="#arguments.name#"
		asciiextensionlist="#arguments.asciiextensionlist#"
		transfermode="#arguments.transfermode#"
		failifexists="#arguments.failifexists#"
		directory="#arguments.directory#"
		localfile="#arguments.localfile#"
		remotefile="#arguments.remotefile#"
		item="#arguments.item#"
		existing="#arguments.existing#"
		new="#arguments.new#"
		debug="#arguments.debug#"
		result="#arguments.result#"> 	
	
</cffunction>		



<cffunction name="cfgraph" hint="cfgraph">
	<cfargument name="type" required="true" default="">
	<cfargument name="query" required="false" default="">
	<cfargument name="itemColumn" required="false" default="">
	<cfargument name="valueColumn" required="false" default="">
	<cfargument name="showValueLabel" required="false" default="">
	<cfargument name="valueLabelFont" required="false" default="">
	<cfargument name="valueLabelSize" required="false" default="">
	<cfargument name="valueLocation" required="false" default="">
	<cfargument name="scaleFrom" required="false" default="">
	<cfargument name="scaleTo" required="false" default="">
	<cfargument name="showItemLabel" required="false" default="">
	<cfargument name="itemLabelFont" required="false" default="">
	<cfargument name="itemLabelSize" required="false" default="">
	<cfargument name="itemLabelOrientation" required="false" default="">
	<cfargument name="title" required="false" default="">
	<cfargument name="titleFont" required="false" default="">
	<cfargument name="fileFormat" required="false" default="">
	<cfargument name="barSpacing" required="false" default="">
	<cfargument name="graphHeight" required="false" default="">
	<cfargument name="graphWidth" required="false" default="">
	<cfargument name="backgroundColor" required="false" default="">
	<cfargument name="borderColor" required="false" default="">
	<cfargument name="borderWidth" required="false" default="">
	<cfargument name="depth" required="false" default="">
	<cfargument name="colorList" required="false" default="">
	<cfargument name="gridlines" required="false" default="">
	<cfargument name="lineColor" required="false" default="">
	<cfargument name="lineWidth" required="false" default="">
	<cfargument name="fill" required="false" default="">
	<cfargument name="showLegend" required="false" default="">
	<cfargument name="legendFont" required="false" default="">
	<cfargument name="url" required="false" default="">
	<cfargument name="urlColumn" required="false" default="">
	<cfargument name="xAxisType" required="false" default="">
	<cfargument name="yAxisType" required="false" default="">
	
	<cfgraph type="#arguments.type#"
		query="#arguments.query#"
		itemColumn="#arguments.itemColumn#"
		valueColumn="#arguments.valueColumn#"
		showValueLabel="#arguments.showValueLabel#"
		valueLabelFont="#arguments.valueLabelFont#"
		valueLabelSize="#arguments.valueLabelSize#"
		valueLocation="#arguments.valueLocation#"
		scaleFrom="#arguments.scaleFrom#"
		scaleTo="#arguments.scaleTo#"
		showItemLabel="#arguments.showItemLabel#"
		itemLabelFont="#arguments.itemLabelFont#"
		itemLabelSize="#arguments.itemLabelSize#"
		itemLabelOrientation="#arguments.itemLabelOrientation#"
		title="#arguments.title#"
		titleFont="#arguments.titleFont#"
		fileFormat="#arguments.fileFormat#"
		barSpacing="#arguments.barSpacing#"
		graphHeight="#arguments.graphHeight#"
		graphWidth="#arguments.graphWidth#"
		backgroundColor="#arguments.backgroundColor#"
		borderColor="#arguments.borderColor#"
		borderWidth="#arguments.borderWidth#"
		depth="#arguments.depth#"
		colorList="#arguments.colorList#"
		gridlines="#arguments.gridlines#"
		lineColor="#arguments.lineColor#"
		lineWidth="#arguments.lineWidth#"
		fill="#arguments.fill#"
		showLegend="#arguments.showLegend#"
		legendFont="#arguments.legendFont#"
		url="#arguments.url#"
		urlColumn="#arguments.urlColumn#"
		xAxisType="#arguments.xAxisType#"
		yAxisType="#arguments.yAxisType#"> 	
	</cfgraph>
</cffunction>		



<cffunction name="cfgraphdata" hint="cfgraphdata">
	<cfargument name="item" required="true" default="">
	<cfargument name="value" required="true" default="">
	<cfargument name="url" required="true" default="">
	<cfargument name="color" required="true" default="">
	
	<cfgraphdata item="#arguments.item#"
		value="#arguments.value#"
		url="#arguments.url#"
		color="#arguments.color#"> 	
	</cfgraphdata>
</cffunction>		



<cffunction name="cfgrid" hint="CFGRID tag">
	<!---cfargument name="passthrough" required="false" default="">
	<cfargument name="attributecollection" required="false" default=""--->
	<cfargument name="name" required="true" default="">
	<cfargument name="label" required="false" default="">
	<cfargument name="onValidate" required="false" default="">
	<cfargument name="onError" required="false" default="">
	<cfargument name="format" required="false" default="">
	<cfargument name="height" required="false" default="">
	<cfargument name="width" required="false" default="">
	<cfargument name="onChange" required="false" default="">
	<cfargument name="autoWidth" required="false" default="">
	<cfargument name="vSpace" required="false" default="">
	<cfargument name="hSpace" required="false" default="">
	<cfargument name="align" required="false" default="">
	<cfargument name="query" required="false" default="">
	<cfargument name="insert" required="false" default="">
	<cfargument name="delete" required="false" default="">
	<cfargument name="sort" required="false" default="">
	<cfargument name="font" required="false" default="">
	<cfargument name="fontSize" required="false" default="">
	<cfargument name="italic" required="false" default="">
	<cfargument name="bold" required="false" default="">
	<cfargument name="textColor" required="false" default="">
	<cfargument name="href" required="false" default="">
	<cfargument name="hrefKey" required="false" default="">
	<cfargument name="target" required="false" default="">
	<cfargument name="appendKey" required="false" default="">
	<cfargument name="highlightHref" required="false" default="">
	<cfargument name="gridDataAlign" required="false" default="">
	<cfargument name="gridLines" required="false" default="">
	<cfargument name="rowHeight" required="false" default="">
	<cfargument name="rowHeaders" required="false" default="">
	<cfargument name="rowHeaderAlign" required="false" default="">
	<cfargument name="rowHeaderFont" required="false" default="">
	<cfargument name="rowHeaderFontSize" required="false" default="">
	<cfargument name="rowHeaderItalic" required="false" default="">
	<cfargument name="rowHeaderBold" required="false" default="">
	<cfargument name="rowHeaderTextColor" required="false" default="">
	<cfargument name="colHeaders" required="false" default="">
	<cfargument name="colHeaderAlign" required="false" default="">
	<cfargument name="colHeaderFont" required="false" default="">
	<cfargument name="colHeaderFontSize" required="false" default="">
	<cfargument name="colHeaderItalic" required="false" default="">
	<cfargument name="colHeaderBold" required="false" default="">
	<cfargument name="colHeaderTextColor" required="false" default="">
	<cfargument name="bgColor" required="false" default="">
	<cfargument name="selectColor" required="false" default="">
	<cfargument name="selectMode" required="false" default="">
	<cfargument name="maxRows" required="false" default="">
	<cfargument name="notSupported" required="false" default="">
	<cfargument name="pictureBar" required="false" default="">
	<cfargument name="insertButton" required="false" default="">
	<cfargument name="deleteButton" required="false" default="">
	<cfargument name="sortAscendingButton" required="false" default="">
	<cfargument name="sortDescendingButton" required="false" default="">
	<cfargument name="gridcolumnsrows" required="false" default="#arrayNew(1)#" hint="An double array of structs.  Each top-level array index is a struct that represents a column.  The keys are name/value pairs for each cfgridcolumn, with an additional one called 'rows', which is another array of structs representing each row in a column.">
	<cfgrid 
		<!--- passthrough="#arguments.passthrough#"
		attributecollection="#arguments.attributecollection#" --->
		name="#arguments.name#"
		label="#arguments.label#"
		onValidate="#arguments.onValidate#"
		onError="#arguments.onError#"
		format="#arguments.format#"
		height="#arguments.height#"
		width="#arguments.width#"
		onChange="#arguments.onChange#"
		autoWidth="#arguments.autoWidth#"
		vSpace="#arguments.vSpace#"
		hSpace="#arguments.hSpace#"
		align="#arguments.align#"
		query="#arguments.query#"
		insert="#arguments.insert#"
		delete="#arguments.delete#"
		sort="#arguments.sort#"
		font="#arguments.font#"
		fontSize="#arguments.fontSize#"
		italic="#arguments.italic#"
		bold="#arguments.bold#"
		textColor="#arguments.textColor#"
		href="#arguments.href#"
		hrefKey="#arguments.hrefKey#"
		target="#arguments.target#"
		appendKey="#arguments.appendKey#"
		highlightHref="#arguments.highlightHref#"
		gridDataAlign="#arguments.gridDataAlign#"
		gridLines="#arguments.gridLines#"
		rowHeight="#arguments.rowHeight#"
		rowHeaders="#arguments.rowHeaders#"
		rowHeaderAlign="#arguments.rowHeaderAlign#"
		rowHeaderFont="#arguments.rowHeaderFont#"
		rowHeaderFontSize="#arguments.rowHeaderFontSize#"
		rowHeaderItalic="#arguments.rowHeaderItalic#"
		rowHeaderBold="#arguments.rowHeaderBold#"
		rowHeaderTextColor="#arguments.rowHeaderTextColor#"
		colHeaders="#arguments.colHeaders#"
		colHeaderAlign="#arguments.colHeaderAlign#"
		colHeaderFont="#arguments.colHeaderFont#"
		colHeaderFontSize="#arguments.colHeaderFontSize#"
		colHeaderItalic="#arguments.colHeaderItalic#"
		colHeaderBold="#arguments.colHeaderBold#"
		colHeaderTextColor="#arguments.colHeaderTextColor#"
		bgColor="#arguments.bgColor#"
		selectColor="#arguments.selectColor#"
		selectMode="#arguments.selectMode#"
		maxRows="#arguments.maxRows#"
		notSupported="#arguments.notSupported#"
		pictureBar="#arguments.pictureBar#"
		insertButton="#arguments.insertButton#"
		deleteButton="#arguments.deleteButton#"
		sortAscendingButton="#arguments.sortAscendingButton#"
		sortDescendingButton="#arguments.sortDescendingButton#">
		
		<cfloop from="1" to="#arraylen(arguments.cfgridcolumnsrows)#" index="i">
			<cfgridcolumn <!---passthrough="#arguments.gridcolumnsrows[i].passthrough#"
				attributecollection="#arguments.gridcolumnsrows[i].attributecollection#"--->
				name="#arguments.gridcolumnsrows[i].name#"
				mask="#arguments.gridcolumnsrows[i].mask#"
				header="#arguments.gridcolumnsrows[i].header#"
				width="#arguments.gridcolumnsrows[i].width#"
				font="#arguments.gridcolumnsrows[i].font#"
				fontSize="#arguments.gridcolumnsrows[i].fontSize#"
				italic="#arguments.gridcolumnsrows[i].italic#"
				bold="#arguments.gridcolumnsrows[i].bold#"
				textColor="#arguments.gridcolumnsrows[i].textColor#"
				bgColor="#arguments.gridcolumnsrows[i].bgColor#"
				href="#arguments.gridcolumnsrows[i].href#"
				hrefKey="#arguments.gridcolumnsrows[i].hrefKey#"
				target="#arguments.gridcolumnsrows[i].target#"
				select="#arguments.gridcolumnsrows[i].select#"
				display="#arguments.gridcolumnsrows[i].display#"
				type="#arguments.gridcolumnsrows[i].type#"
				headerFont="#arguments.gridcolumnsrows[i].headerFont#"
				headerFontSize="#arguments.gridcolumnsrows[i].headerFontSize#"
				headerItalic="#arguments.gridcolumnsrows[i].headerItalic#"
				headerBold="#arguments.gridcolumnsrows[i].headerBold#"
				headerTextColor="#arguments.gridcolumnsrows[i].headerTextColor#"
				dataAlign="#arguments.gridcolumnsrows[i].dataAlign#"
				headerAlign="#arguments.gridcolumnsrows[i].headerAlign#"
				numberFormat="#arguments.gridcolumnsrows[i].numberFormat#"
				values="#arguments.gridcolumnsrows[i].values#"
				valuesDisplay="#arguments.gridcolumnsrows[i].valuesDisplay#"
				valuesDelimiter="#arguments.gridcolumnsrows[i].valuesDelimiter#"> 	
				
				<cfset rows=gridcolumnsrows[i].rows>
				<cfloop from="1" to="#arrayLen(rows)#" index="j">
					<cfgridrow <!---passthrough="#rows[j].passthrough#"
						attributecollection="#rows[j].attributecollection#"--->
						data="#rows[j].data#"> 	
				</cfloop>
			</cfgridcolumn>
		</cfloop>
		 	
	</cfgrid>
</cffunction>		


<cffunction name="cfgridupdate" hint="Updates/inserts/deletes records in data sources based on editable cfgrid.">
	<!---cfargument name="name" required="false" default=""--->
	<cfargument name="datasource" required="false" default="">
	<cfargument name="dbtype" required="false" default="">
	<!---cfargument name="sql" required="false" default=""--->
	<cfargument name="username" required="false" default="">
	<cfargument name="password" required="false" default="">
	<!---cfargument name="maxrows" required="false" default=""--->
	<!---cfargument name="blockfactor" required="false" default=""--->
	<!---cfargument name="timeout" required="false" default=""--->
	<cfargument name="dbname" required="false" default="">
	<!---cfargument name="cachedafter" required="false" default=""--->
	<!---cfargument name="cachedwithin" required="false" default=""--->
	<!---cfargument name="result" required="false" default=""--->
	<!---cfargument name="debug" required="false" default=""--->
	<cfargument name="keyonly" required="false" default="">
	<cfargument name="grid" required="true" default="">
	<cfargument name="tablename" required="true" default="">
	<cfargument name="tableowner" required="false" default="">
	<cfargument name="tablequalifier" required="false" default="">
	
	<cfgridupdate <!---name="#arguments.name#"--->
		datasource="#arguments.datasource#"
		dbtype="#arguments.dbtype#"
		<!---sql="#arguments.sql#"--->
		username="#arguments.username#"
		password="#arguments.password#"
		<!---maxrows="#arguments.maxrows#"--->
		<!---blockfactor="#arguments.blockfactor#"--->
		<!---timeout="#arguments.timeout#"--->
		dbname="#arguments.dbname#"
		<!---cachedafter="#arguments.cachedafter#"--->
		<!---cachedwithin="#arguments.cachedwithin#"--->
		<!---result="#arguments.result#"--->
		<!---debug="#arguments.debug#"--->
		keyonly="#arguments.keyonly#"
		grid="#arguments.grid#"
		tablename="#arguments.tablename#"
		tableowner="#arguments.tableowner#"
		tablequalifier="#arguments.tablequalifier#"> 	
	
</cffunction>		



<cffunction name="cfheader" hint="Generates custom HTTP response headers to return to the client.">
	<cfargument name="name" required="false" default="">
	<cfargument name="value" required="false" default="">
	<cfargument name="statuscode" required="false" default="">
	<cfargument name="statustext" required="false" default="">
	<cfargument name="charset" required="false" default="">
	
	<cfif arguments.name is not "">
		<cfheader name="#arguments.name#"
			value="#arguments.value#"
			charset="#arguments.charset#"> 	
	<cfelse>
		<cfheader statuscode="#arguments.statuscode#"
			statustext="#arguments.statustext#"> 	
	</cfif>
</cffunction>		



<cffunction name="cfhtmlhead" hint="cfhtmlhead writes the text specified in the text attribute to the <head> section of a generated HTML page. The cfhtmlhead tag can be useful for embedding JavaScript code, or placing other HTML tags such, as META, LINK, TITLE, or BASE in an HTML page header. <p>">
	<cfargument name="text" required="false" default="">
	<cfhtmlhead text="#arguments.text#"> 	
</cffunction>		

<cffunction name="cfhttp" hint="Lets you execute HTTP 1.1 operations on files. Using cfhttp, you can execute standard GET operations and create a query object from a text file. POST operations lets you upload MIME file types to a server, or post cookie, formfield, URL, file, or CGI variables directly to a specified server. Other HTTP 1.1 operations added post-neo (CFMX).">
	<cfargument name="url" required="true" default="">
	<cfargument name="port" required="false" default="">
	<cfargument name="method" required="false" default="">
	<cfargument name="username" required="false" default="">
	<cfargument name="password" required="false" default="">
	<cfargument name="name" required="false" default="">
	<cfargument name="columns" required="false" default="">
	<cfargument name="charset" required="false" default="">
	<cfargument name="path" required="false" default="">
	<cfargument name="file" required="false" default="">
	<cfargument name="delimiter" required="false" default="">
	<cfargument name="textqualifier" required="false" default="">
	<cfargument name="resolveurl" required="false" default="">
	<cfargument name="proxyserver" required="false" default="">
	<cfargument name="proxyport" required="false" default="">
	<cfargument name="proxyUser" required="false" default="">
	<cfargument name="proxyPassword" required="false" default="">
	<cfargument name="useragent" required="false" default="">
	<cfargument name="throwonerror" required="false" default="">
	<cfargument name="redirect" required="false" default="">
	<cfargument name="firstRowAsHeaders" required="false" default="">
	<cfargument name="timeout" required="false" default="">
	<cfargument name="multipart" required="false" default="">
	<cfargument name="getAsBinary" required="false" default="">
	<!---cfargument name="result" required="false" default=""--->
	<cfargument name="params" required="false" default="##" hint="An array of structs whose keys represent the name/value pairs of attributes in a cfhttpparam tag.">
	<cfset var i = 0>
	<cfset var result = 0>
	<cfhttp url="#arguments.url#"
		port="#arguments.port#"
		method="#arguments.method#"
		username="#arguments.username#"
		password="#arguments.password#"
		name="#arguments.name#"
		columns="#arguments.columns#"
		charset="#arguments.charset#"
		path="#arguments.path#"
		file="#arguments.file#"
		delimiter="#arguments.delimiter#"
		textqualifier="#arguments.textqualifier#"
		resolveurl="#arguments.resolveurl#"
		proxyserver="#arguments.proxyserver#"
		proxyport="#arguments.proxyport#"
		proxyUser="#arguments.proxyUser#"
		proxyPassword="#arguments.proxyPassword#"
		useragent="#arguments.useragent#"
		throwonerror="#arguments.throwonerror#"
		redirect="#arguments.redirect#"
		firstRowAsHeaders="#arguments.firstRowAsHeaders#"
		timeout="#arguments.timeout#"
		multipart="#arguments.multipart#"
		getAsBinary="#arguments.getAsBinary#"
		result="result"> 
		
		<cfloop from="1" to="#arrayLen(arguments.params)#" index="i">
			<cfhttpparam name="#arguments.params[i].name#"
				type="#arguments.params[i].type#"
				value="#arguments.params[i].value#"
				file="#arguments.params[i].file#"
				encoded="#arguments.params[i].encoded#"
				mimeType="#arguments.params[i].mimeType#"> 
		</cfloop>
			
	</cfhttp>
	<cfreturn result>
</cffunction>		


<cffunction name="cfinclude" hint="Lets you embed references to ColdFusion pages in CFML. You can embed cfinclude tags recursively. For an additional method of encapsulating CFML.">
	<cfargument name="template" required="true" default="">
	<cfinclude template="#arguments.template#"> 	
</cffunction>		


<cffunction name="cfindex" hint="CFIndexTag The CFIndex tag allows you to populate Verity collections with indexed data.">
	<cfargument name="type" required="false" default="">
	<cfargument name="action" required="false" default="">
	<cfargument name="title" required="false" default="">
	<cfargument name="key" required="false" default="">
	<cfargument name="body" required="false" default="">
	<cfargument name="custom1" required="false" default="">
	<cfargument name="custom2" required="false" default="">
	<cfargument name="custom3" required="false" default="">
	<cfargument name="custom4" required="false" default="">
	<cfargument name="urlpath" required="false" default="">
	<cfargument name="extensions" required="false" default="">
	<cfargument name="query" required="false" default="">
	<cfargument name="prefix" required="false" default="">
	<cfargument name="recurse" required="false" default="">
	<cfargument name="collection" required="true" default="">
	<cfargument name="status" required="false" default="">
	<cfargument name="category" required="false" default="">
	<cfargument name="categorytree" required="false" default="">
	<cfargument name="indexMode" required="false" default="">
	<cfargument name="language" required="false" default="">
	<cfargument name="external" required="false" default="">
	
	<cfindex type="#arguments.type#"
		action="#arguments.action#"
		title="#arguments.title#"
		key="#arguments.key#"
		body="#arguments.body#"
		custom1="#arguments.custom1#"
		custom2="#arguments.custom2#"
		custom3="#arguments.custom3#"
		custom4="#arguments.custom4#"
		urlpath="#arguments.urlpath#"
		extensions="#arguments.extensions#"
		query="#arguments.query#"
		prefix="#arguments.prefix#"
		recurse="#arguments.recurse#"
		collection="#arguments.collection#"
		status="#arguments.status#"
		category="#arguments.category#"
		categorytree="#arguments.categorytree#"
		indexMode="#arguments.indexMode#"
		language="#arguments.language#"
		external="#arguments.external#"> 	
	
</cffunction>		



<cffunction name="cfinput" hint="CFINPUT tag">
	<cfargument name="attributecollection" required="false" default="">
	<cfargument name="name" required="true" default="">
	<cfargument name="label" required="false" default="">
	<cfargument name="value" required="false" default="">
	<cfargument name="type" required="true" default="">
	<cfargument name="pattern" required="false" default="">
	<cfargument name="mask" required="false" default="">
	<cfargument name="maxLength" required="false" default="">
	<cfargument name="range" required="false" default="">
	<cfargument name="required" required="false" default="">
	<cfargument name="message" required="false" default="">
	<cfargument name="onerror" required="false" default="">
	<cfargument name="onValidate" required="false" default="">
	<cfargument name="validate" required="false" default="">
	<cfargument name="validateat" required="false" default="">
	<cfargument name="passthrough" required="false" default="">
	<cfargument name="bind" required="false" default="">
	
	<cfinput attributecollection="#arguments.attributecollection#"
		name="#arguments.name#"
		label="#arguments.label#"
		value="#arguments.value#"
		type="#arguments.type#"
		pattern="#arguments.pattern#"
		mask="#arguments.mask#"
		maxLength="#arguments.maxLength#"
		range="#arguments.range#"
		required="#arguments.required#"
		message="#arguments.message#"
		onerror="#arguments.onerror#"
		onValidate="#arguments.onValidate#"
		validate="#arguments.validate#"
		validateat="#arguments.validateat#"
		passthrough="#arguments.passthrough#"
		bind="#arguments.bind#"> 	
	</cfinput>
</cffunction>		



<cffunction name="cfinsert" hint="Inserts records in data sources.">
	<!---cfargument name="name" required="false" default=""--->
	<cfargument name="datasource" required="false" default="">
	<cfargument name="dbtype" required="false" default="">
	<!---cfargument name="sql" required="false" default=""--->
	<cfargument name="username" required="false" default="">
	<cfargument name="password" required="false" default="">
	<!---cfargument name="maxrows" required="false" default=""--->
	<!---cfargument name="blockfactor" required="false" default=""--->
	<!---cfargument name="timeout" required="false" default=""--->
	<cfargument name="dbname" required="false" default="">
	<!---cfargument name="cachedafter" required="false" default="">
	<cfargument name="cachedwithin" required="false" default="">
	<cfargument name="result" required="false" default=""--->
	<!---cfargument name="debug" required="false" default=""--->
	<cfargument name="formfields" required="false" default="">
	<cfargument name="tablename" required="true" default="">
	<cfargument name="tableowner" required="false" default="">
	<cfargument name="tablequalifier" required="false" default="">
	
	<cfinsert <!---name="#arguments.name#"--->
		datasource="#arguments.datasource#"
		dbtype="#arguments.dbtype#"
		<!---sql="#arguments.sql#"--->
		username="#arguments.username#"
		password="#arguments.password#"
		<!---maxrows="#arguments.maxrows#"--->
		<!---blockfactor="#arguments.blockfactor#"--->
		<!---timeout="#arguments.timeout#"--->
		dbname="#arguments.dbname#"
		<!--->cachedafter="#arguments.cachedafter#"
		cachedwithin="#arguments.cachedwithin#"--->
		<!---result="#arguments.result#"--->
		<!---debug="#arguments.debug#"--->
		formfields="#arguments.formfields#"
		tablename="#arguments.tablename#"
		tableowner="#arguments.tableowner#"
		tablequalifier="#arguments.tablequalifier#"> 	
	
</cffunction>		



<cffunction name="cfinvoke" hint="Invoke a method on a component.">
	<cfargument name="returnVariable" required="false" default="">
	<cfargument name="webservice" required="false" default="">
	<cfargument name="username" required="false" default="">
	<cfargument name="password" required="false" default="">
	<cfargument name="proxyServer" required="false" default="">
	<cfargument name="proxyPort" required="false" default="">
	<cfargument name="proxyUser" required="false" default="">
	<cfargument name="proxyPassword" required="false" default="">
	<cfargument name="timeout" required="false" default="">
	<cfargument name="servicePort" required="false" default="">
	<cfargument name="method" required="true" default="">
	<cfargument name="attributecollection" required="false" default="">
	<cfargument name="component" required="false" default="">
	<cfargument name="argumentCollection" required="false" default="">
	
	<cfinvoke returnVariable="#arguments.returnVariable#"
		webservice="#arguments.webservice#"
		username="#arguments.username#"
		password="#arguments.password#"
		proxyServer="#arguments.proxyServer#"
		proxyPort="#arguments.proxyPort#"
		proxyUser="#arguments.proxyUser#"
		proxyPassword="#arguments.proxyPassword#"
		timeout="#arguments.timeout#"
		servicePort="#arguments.servicePort#"
		method="#arguments.method#"
		attributecollection="#arguments.attributecollection#"
		component="#arguments.component#"
		argumentCollection="#arguments.argumentCollection#"> 	
	</cfinvoke>
</cffunction>		



<cffunction name="cfinvokeargument" hint="Used for cfinvoke to pass arguments to components or web services">
	<cfargument name="name" required="true" default="">
	<cfargument name="value" required="false" default="">
	<cfargument name="omit" required="false" default="">
	
	<cfinvokeargument name="#arguments.name#"
		value="#arguments.value#"
		omit="#arguments.omit#"> 	
	
</cffunction>		



<cffunction name="cfldap" hint="This class is used to perform actions against an LDAP server. Refer to the jndi api documentation at http://java.sun.com/products/jndi">
	<cfargument name="action" required="false" default="">
	<cfargument name="name" required="false" default="">
	<cfargument name="returnAsBinary" required="false" default="">
	<cfargument name="attributes" required="false" default="">
	<cfargument name="dn" required="false" default="">
	<cfargument name="start" required="false" default="">
	<cfargument name="scope" required="false" default="">
	<cfargument name="startrow" required="false" default="">
	<cfargument name="maxrows" required="false" default="">
	<cfargument name="filter" required="false" default="">
	<cfargument name="sort" required="false" default="">
	<cfargument name="filterfile" required="false" default="">
	<cfargument name="separator" required="false" default="">
	<cfargument name="sortControl" required="false" default="">
	<cfargument name="modifytype" required="false" default="">
	<cfargument name="referral" required="false" default="">
	<cfargument name="secure" required="false" default="">
	<cfargument name="server" required="true" default="">
	<cfargument name="port" required="false" default="">
	<cfargument name="timeout" required="false" default="">
	<cfargument name="userName" required="false" default="">
	<cfargument name="password" required="false" default="">
	<cfargument name="rebind" required="false" default="">
	<cfargument name="delimiter" required="false" default="">
	
	<cfldap action="#arguments.action#"
		name="#arguments.name#"
		returnAsBinary="#arguments.returnAsBinary#"
		attributes="#arguments.attributes#"
		dn="#arguments.dn#"
		start="#arguments.start#"
		scope="#arguments.scope#"
		startrow="#arguments.startrow#"
		maxrows="#arguments.maxrows#"
		filter="#arguments.filter#"
		sort="#arguments.sort#"
		filterfile="#arguments.filterfile#"
		separator="#arguments.separator#"
		sortControl="#arguments.sortControl#"
		modifytype="#arguments.modifytype#"
		referral="#arguments.referral#"
		secure="#arguments.secure#"
		server="#arguments.server#"
		port="#arguments.port#"
		timeout="#arguments.timeout#"
		userName="#arguments.userName#"
		password="#arguments.password#"
		rebind="#arguments.rebind#"
		delimiter="#arguments.delimiter#"> 	
	
</cffunction>		



<cffunction name="cflocation" hint="Opens a ColdFusion page or HTML file. For example, you might use cflocation to specify a standard message or response that you use in several ColdFusion applications. Use the addToken attribute to verify client requests. TODO - docs warn that cookies don't get set. is this still true? is this a compatibility issue?">
	<cfargument name="url" required="true" default="">
	<cfargument name="addtoken" required="false" default="">
	
	<cflocation url="#arguments.url#"
		addtoken="#arguments.addtoken#"> 	
	
</cffunction>		


<!--- cflock doesn't make sense since we don't have closures --->
<!----cffunction name="cflock" hint="Provides two types of locks to ensure the integrity of shared data: <li> exclusive lock <li> read-only lock An exclusive lock single-threads access to the CFML constructs in its body. Single-threaded access implies that the body of the tag can be executed by at most one request at a time. A request executing inside a cflock tag has an ''exclusive lock'' on the tag. No other requests can start executing inside the tag while a request has an exclusive lock. ColdFusion issues exclusive locks on a first-come, first-served basis.">
	<cfargument name="type" required="false" default="">
	<cfargument name="throwontimeout" required="false" default="">
	<cfargument name="name" required="false" default="">
	<cfargument name="scope" required="false" default="">
	<cfargument name="timeout" required="true" default="">
	<!---cfargument name="generatedLock" required="false" default=""--->
	<cfif arguments.name is not "">
		<cflock type="#arguments.type#"
			throwontimeout="#arguments.throwontimeout#"
			name="#arguments.name#"
			timeout="#arguments.timeout#"
			<!---generatedLock="#arguments.generatedLock#"--->> 	
	</cflock>
	<cfelse>
		<cflock type="#arguments.type#"
			throwontimeout="#arguments.throwontimeout#"
			scope="#arguments.scope#"
			timeout="#arguments.timeout#"
			<!---generatedLock="#arguments.generatedLock#"--->> 	
	</cfif>
	
</cffunction--->		



<cffunction name="cflog" hint="The cflog tag lets you log custom messages to standard or custom log files. You can specify a file for the log message or send messages to the default application or scheduler log. The log message can include ColdFusion expressions. Log files must have the suffix .log and must be located in the ColdFusion log directory.">
	<cfargument name="text" required="true" default="">
	<cfargument name="log" required="false" default="">
	<cfargument name="file" required="false" default="">
	<cfargument name="type" required="false" default="">
	<cfargument name="thread" required="false" default="">
	<cfargument name="date" required="false" default="">
	<cfargument name="time" required="false" default="">
	<cfargument name="application" required="false" default="">
	
	<cflog text="#arguments.text#"
		log="#arguments.log#"
		file="#arguments.file#"
		type="#arguments.type#"
		thread="#arguments.thread#"
		date="#arguments.date#"
		time="#arguments.time#"
		application="#arguments.application#"> 	
	
</cffunction>		



<cffunction name="cflogin" hint="cfLoginUser">
	<cfargument name="idleTimeOut" required="false" default="">
	<cfargument name="applicationToken" required="false" default="">
	<cfargument name="cookieDomain" required="false" default="">
	
	<cflogin idleTimeOut="#arguments.idleTimeOut#"
		applicationToken="#arguments.applicationToken#"
		cookieDomain="#arguments.cookieDomain#"> 	
	</cflogin>
</cffunction>		


<cffunction name="cfloginUser" hint="This tag binds user/role information to the current request.">
	<cfargument name="roles" required="true" default="">
	<cfargument name="name" required="true" default="">
	<cfargument name="password" required="true" default="">
	
	<cfloginUser roles="#arguments.roles#"
		name="#arguments.name#"
		password="#arguments.password#"> 	
	
</cffunction>		


<cffunction name="cflogout" hint="cfLogout">
	<cflogout > 	
	</cflogout>
</cffunction>		


<cffunction name="cfmail" hint="Sends e-mail messages by an SMTP server.">
	<cfargument name="query" required="false" default="">
	<cfargument name="startrow" required="false" default="">
	<cfargument name="group" required="false" default="">
	<cfargument name="groupcasesensitive" required="false" default="">
	<cfargument name="maxrows" required="false" default="">
	<cfargument name="server" required="false" default="">
	<cfargument name="port" required="false" default="">
	<cfargument name="from" required="true" default="">
	<cfargument name="subject" required="true" default="">
	<cfargument name="timeout" required="false" default="">
	<cfargument name="to" required="true" default="">
	<cfargument name="cc" required="false" default="">
	<cfargument name="bcc" required="false" default="">
	<cfargument name="replyTo" required="false" default="">
	<cfargument name="failTo" required="false" default="">
	<cfargument name="type" required="false" default="">
	<cfargument name="mimeattach" required="false" default="">
	<cfargument name="mailerid" required="false" default="">
	<cfargument name="spoolenable" required="false" default="">
	<cfargument name="wrapText" required="false" default="">
	<cfargument name="username" required="false" default="">
	<cfargument name="password" required="false" default="">
	<cfargument name="debug" required="false" default="">
	<cfargument name="charset" required="false" default="">
	<cfargument name="mailparams" required="false" default="#arrayNew(1)#" hint="An array of structs where each struct represents a mail param (each name/value pair is an attribute for cfmailparam tag).">
	<cfargument name="message" required="false" default="" hint="The message to send if the type attribute is used.">
	<cfargument name="mailparts" required="false" default="" hint="An array of structs for each mailpart (if type/message arguments are not used).  Each name/value pair in the struct represents attributes in the cfmailpart tag, plus an extra attribute 'message' should represent the message to send.">
	

	<cfset var i = 0>
	<cfmail query="#arguments.query#"
		startrow="#arguments.startrow#"
		group="#arguments.group#"
		groupcasesensitive="#arguments.groupcasesensitive#"
		maxrows="#arguments.maxrows#"
		server="#arguments.server#"
		port="#arguments.port#"
		from="#arguments.from#"
		subject="#arguments.subject#"
		timeout="#arguments.timeout#"
		to="#arguments.to#"
		cc="#arguments.cc#"
		bcc="#arguments.bcc#"
		replyTo="#arguments.replyTo#"
		failTo="#arguments.failTo#"
		type="#arguments.type#"
		mimeattach="#arguments.mimeattach#"
		mailerid="#arguments.mailerid#"
		spoolenable="#arguments.spoolenable#"
		wrapText="#arguments.wrapText#"
		username="#arguments.username#"
		password="#arguments.password#"
		debug="#arguments.debug#"
		charset="#arguments.charset#"> 	
		
		<cfloop from="1" to="#arrayLen(arguments.mailparams)#" index="i">
			<cfif structKeyExists(arguments.mailparams[i],"name")>
				<cfmailparam name="#arguments.mailparams[i].name#"
					value="#arguments.mailparams[i].value#"> 	
			<cfelse>
				<cfmailparam 
					file="#arguments.mailparams[i].file#"
					type="#arguments.mailparams[i].type#"
					contentID="#arguments.mailparams[i].contentID#"
					disposition="#arguments.mailparams[i].disposition#"> 	
			</cfif>
		</cfloop>
		<cfif arguments.type is "">
			<cfloop from="1" to="#arrayLen(arguments.mailparts)#" index="i">
				<cfmailpart charset="#arguments.mailparts[i].charset#"
					type="#arguments.mailparts[i].type#"
					wrapText="#arguments.mailparts[i].wrapText#"> 
					#arguments.mailparts[i].message#		
				</cfmailpart>
			</cfloop>
		<cfelse>
			#arguments.message#
		</cfif>
	</cfmail>
</cffunction>		


<cffunction name="cfmodule" hint="Invokes a custom tag for use in ColdFusion application pages. The cfmodule tag can help deal with custom tag name conflicts.">
	<cfargument name="name" required="false" default="">
	<cfargument name="attributecollection" required="false" default="">
	<cfargument name="template" required="false" default="">
	
	<cfmodule name="#arguments.name#"
		attributecollection="#arguments.attributecollection#"
		template="#arguments.template#"> 	
	</cfmodule>
</cffunction>		



<cffunction name="cfobject" hint="used to access COM, CORBA, or plain Java objects.">
	<cfargument name="type" required="false" default="">
	<cfargument name="action" required="false" default="">
	<cfargument name="class" required="false" default="">
	<cfargument name="component" required="false" default="">
	<cfargument name="webservice" required="false" default="">
	<cfargument name="name" required="false" default="">
	<cfargument name="context" required="false" default="">
	<cfargument name="server" required="false" default="">
	<cfargument name="locale" required="false" default="">
	
	<cfif arguments.component is not "">
		<cfobject type="#arguments.type#"
			component="#arguments.component#"
			name="#arguments.name#"> 	
	<cfelseif arguments.action is not "">
		<cfobject type="#arguments.type#"
			action="#arguments.action#"
			class="#arguments.class#"
			name="#arguments.name#"
			context="#arguments.context#"
			server="#arguments.server#"
			locale="#arguments.locale#"> 	
	<cfelse> <!--- webservice --->
		<cfobject type="#arguments.type#"
			webservice="#arguments.webservice#"
			name="#arguments.name#"> 	
	</cfif>
</cffunction>		


<cffunction name="cfobjectcache" hint="The cfobjectcache tag clears the cached query if the Action is set to ''clear''">
	<cfargument name="action" required="true" default="">
	<cfobjectcache action="#arguments.action#"> 	
</cffunction>		


<cffunction name="cfoldreport" hint="this tag invokes Java CFX's that implement the CustomTag interface.">
	<cfargument name="report" required="true" default="">
	<cfargument name="title" required="true" default="">
	<cfargument name="dataSource" required="false" default="">
	<cfargument name="type" required="false" default="">
	<cfargument name="orderby" required="false" default="">
	<cfargument name="username" required="false" default="">
	<cfargument name="password" required="false" default="">
	<cfargument name="formula" required="false" default="">
	
	<cfoldreport report="#arguments.report#"
		title="#arguments.title#"
		dataSource="#arguments.dataSource#"
		type="#arguments.type#"
		orderby="#arguments.orderby#"
		username="#arguments.username#"
		password="#arguments.password#"
		formula="#arguments.formula#"> 	
	
</cffunction>		


<cffunction name="cfparam" hint="Tests for a parameter's existence, tests its data type, and provides a default value if one is not assigned.">
	<cfargument name="name" required="true" default="">
	<cfargument name="type" required="false" default="">
	<cfargument name="default" required="false" default="">
	<cfargument name="pattern" required="false" default="">
	<cfargument name="min" required="false" default="">
	<cfargument name="max" required="false" default="">
	
	<cfparam name="#arguments.name#"
		type="#arguments.type#"
		default="#arguments.default#"
		pattern="#arguments.pattern#"
		min="#arguments.min#"
		max="#arguments.max#"> 	
</cffunction>		


<cffunction name="cfpop" hint="Retrieves and deletes e-mail messages from a POP mail server.">
	<cfargument name="server" required="true" default="">
	<cfargument name="port" required="false" default="">
	<cfargument name="action" required="false" default="">
	<cfargument name="username" required="false" default="">
	<cfargument name="password" required="false" default="">
	<cfargument name="name" required="false" default="">
	<cfargument name="messagenumber" required="false" default="">
	<cfargument name="uID" required="false" default="">
	<cfargument name="attachmentpath" required="false" default="">
	<cfargument name="timeout" required="false" default="">
	<cfargument name="maxrows" required="false" default="">
	<cfargument name="startrow" required="false" default="">
	<cfargument name="generateuniquefilenames" required="false" default="">
	<cfargument name="debug" required="false" default="">
	
	<cfpop server="#arguments.server#"
		port="#arguments.port#"
		action="#arguments.action#"
		username="#arguments.username#"
		password="#arguments.password#"
		name="#arguments.name#"
		messagenumber="#arguments.messagenumber#"
		uID="#arguments.uID#"
		attachmentpath="#arguments.attachmentpath#"
		timeout="#arguments.timeout#"
		maxrows="#arguments.maxrows#"
		startrow="#arguments.startrow#"
		generateuniquefilenames="#arguments.generateuniquefilenames#"
		debug="#arguments.debug#"> 	
	
</cffunction>		


<cffunction name="cfprocessingdirective" hint="Provides two types of locks to ensure the integrity of shared data: <li> exclusive lock <li> read-only lock An exclusive lock single-threads access to the CFML constructs in its body. Single-threaded access implies that the body of the tag can be executed by at most one request at a time. A request executing inside a cflock tag has an ''exclusive lock'' on the tag. No other requests can start executing inside the tag while a request has an exclusive lock. ColdFusion issues exclusive locks on a first-come, first-served basis.">
	<cfargument name="suppresswhitespace" required="true" default="">
	<cfprocessingdirective suppresswhitespace="#arguments.suppresswhitespace#"> 	
	</cfprocessingdirective>
</cffunction>		


<!---cffunction name="cfprocparam" hint="Specifies parameter information, including type, name, value, and length. The cfprocparam tag is nested within a cfstoredproc tag">
	<cfargument name="value" required="true" default="">
	<cfargument name="cfsqltype" required="false" default="">
	<cfargument name="scale" required="false" default="">
	<cfargument name="maxlength" required="false" default="">
	<cfargument name="null" required="false" default="">
	<cfargument name="list" required="false" default="">
	<cfargument name="separator" required="false" default="">
	<cfargument name="type" required="false" default="">
	<cfargument name="dbvarname" required="false" default="">
	<cfargument name="variable" required="false" default="">
	
	<cfprocparam value="#arguments.value#"
		cfsqltype="#arguments.cfsqltype#"
		scale="#arguments.scale#"
		maxlength="#arguments.maxlength#"
		null="#arguments.null#"
		list="#arguments.list#"
		separator="#arguments.separator#"
		type="#arguments.type#"
		dbvarname="#arguments.dbvarname#"
		variable="#arguments.variable#"> 	
	
</cffunction--->		



<cffunction name="cfprocresult" hint="Specifies a result set name that other ColdFusion tags, such as cfoutput and cftable, use to access the result set. It also lets you optionally identify which of the stored procedure's result sets to return. The cfprocresult tag is nested within a cfstoredproc tag.">
	<cfargument name="name" required="true" default="">
	<cfargument name="resultset" required="false" default="">
	<cfargument name="maxrows" required="false" default="">
	
	<cfprocresult name="#arguments.name#"
		resultset="#arguments.resultset#"
		maxrows="#arguments.maxrows#"> 	
	
</cffunction>		



<cffunction name="cfquery" hint="Passes SQL statements to a data source. Not limited to queries.">
	<cfargument name="name" required="false" default="">
	<cfargument name="datasource" required="false" default="">
	<cfargument name="dbtype" required="false" default="">
	<cfargument name="sql" required="false" default="">
	<cfargument name="username" required="false" default="">
	<cfargument name="password" required="false" default="">
	<cfargument name="maxrows" required="false" default="">
	<cfargument name="blockfactor" required="false" default="">
	<cfargument name="timeout" required="false" default="">
	<cfargument name="dbname" required="false" default="">
	<cfargument name="cachedafter" required="false" default="">
	<cfargument name="cachedwithin" required="false" default="">
	<!---cfargument name="result" required="false" default=""--->
	<cfargument name="debug" required="false" default="">
	<cfset var result = "">
	<cfif cachedAfter is not "">
		<cfquery name="result"
			datasource="#arguments.datasource#"
			dbtype="#arguments.dbtype#"
			sql="#arguments.sql#"
			username="#arguments.username#"
			password="#arguments.password#"
			maxrows="#arguments.maxrows#"
			blockfactor="#arguments.blockfactor#"
			timeout="#arguments.timeout#"
			dbname="#arguments.dbname#"
			cachedafter="#arguments.cachedafter#"
			
			result="#arguments.result#"
			debug="#arguments.debug#"> 	
	<cfelseif cachedwithin is not "">
		<cfquery name="result"
			datasource="#arguments.datasource#"
			dbtype="#arguments.dbtype#"
			sql="#arguments.sql#"
			username="#arguments.username#"
			password="#arguments.password#"
			maxrows="#arguments.maxrows#"
			blockfactor="#arguments.blockfactor#"
			timeout="#arguments.timeout#"
			dbname="#arguments.dbname#"
			cachedwithin="#arguments.cachedwithin#"
			result="#arguments.result#"
			debug="#arguments.debug#"> 	
	</cfif>	
	<cfreturn result>
</cffunction>		



<cffunction name="cfqueryparam" hint="Checks the data type of a query parameter. The cfqueryparam tag is nested within a cfquery tag. It is embedded within the query SQL statement. If you specify its optional parameters, cfqueryparam also performs data validation.">
	<cfargument name="value" required="true" default="">
	<cfargument name="cfsqltype" required="false" default="">
	<cfargument name="scale" required="false" default="">
	<cfargument name="maxlength" required="false" default="">
	<cfargument name="null" required="false" default="">
	<cfargument name="list" required="false" default="">
	<cfargument name="separator" required="false" default="">
	
	<cfqueryparam value="#arguments.value#"
		cfsqltype="#arguments.cfsqltype#"
		scale="#arguments.scale#"
		maxlength="#arguments.maxlength#"
		null="#arguments.null#"
		list="#arguments.list#"
		separator="#arguments.separator#"> 	
	
</cffunction>		



<cffunction name="cfregistry" hint="this tag invokes Java CFX's that implement the CustomTag interface. TODO this tag should probably be in compiler.tagext.lang">
	<cfargument name="attributecollection" required="false" default="">
	<cfargument name="class" required="false" default="">
	<cfargument name="branch" required="true" default="">
	<cfargument name="action" required="true" default="">
	<cfargument name="type" required="false" default="">
	<cfargument name="name" required="false" default="">
	<cfargument name="sort" required="false" default="">
	<cfargument name="variable" required="false" default="">
	<cfargument name="value" required="false" default="">
	<cfargument name="entry" required="false" default="">
	<cfargument name="startrow" required="false" default="">
	<cfargument name="maxrows" required="false" default="">
	
	<cfregistry attributecollection="#arguments.attributecollection#"
		class="#arguments.class#"
		branch="#arguments.branch#"
		action="#arguments.action#"
		type="#arguments.type#"
		name="#arguments.name#"
		sort="#arguments.sort#"
		variable="#arguments.variable#"
		value="#arguments.value#"
		entry="#arguments.entry#"
		startrow="#arguments.startrow#"
		maxrows="#arguments.maxrows#"> 	
	
</cffunction>		



<cffunction name="cfreportparam" hint="cfreportparam is used to specify the parameters necessary to control report runtime behavior">
	<cfargument name="name" required="true" default="">
	<cfargument name="value" required="false" default="">
	
	<cfreportparam name="#arguments.name#"
		value="#arguments.value#"> 	
	
</cffunction>		



<cffunction name="cfschedule" hint="Schedules an http request">
	<cfargument name="action" required="true" default="">
	<cfargument name="task" required="true" default="">
	<cfargument name="operation" required="true" default="">
	<cfargument name="url" required="true" default="">
	<cfargument name="file" required="false" default="">
	<cfargument name="path" required="false" default="">
	<cfargument name="startDate" required="true" default="">
	<cfargument name="startTime" required="true" default="">
	<cfargument name="endDate" required="false" default="">
	<cfargument name="endTime" required="false" default="">
	<cfargument name="interval" required="true" default="">
	<cfargument name="publish" required="false" default="">
	<cfargument name="requestTimeOut" required="false" default="">
	<cfargument name="password" required="false" default="">
	<cfargument name="username" required="false" default="">
	<cfargument name="proxyServer" required="false" default="">
	<cfargument name="proxyPassword" required="false" default="">
	<cfargument name="proxyUser" required="false" default="">
	<cfargument name="resolveURL" required="false" default="">
	<cfargument name="port" required="false" default="">
	<cfargument name="proxyPort" required="false" default="">
	
	<cfschedule action="#arguments.action#"
		task="#arguments.task#"
		operation="#arguments.operation#"
		url="#arguments.url#"
		file="#arguments.file#"
		path="#arguments.path#"
		startDate="#arguments.startDate#"
		startTime="#arguments.startTime#"
		endDate="#arguments.endDate#"
		endTime="#arguments.endTime#"
		interval="#arguments.interval#"
		publish="#arguments.publish#"
		requestTimeOut="#arguments.requestTimeOut#"
		password="#arguments.password#"
		username="#arguments.username#"
		proxyServer="#arguments.proxyServer#"
		proxyPassword="#arguments.proxyPassword#"
		proxyUser="#arguments.proxyUser#"
		resolveURL="#arguments.resolveURL#"
		port="#arguments.port#"
		proxyPort="#arguments.proxyPort#"> 	
	
</cffunction>		



<cffunction name="cfselect" hint="CFSELECT tag">
	<cfargument name="attributecollection" required="false" default="">
	<cfargument name="name" required="true" default="">
	<cfargument name="label" required="false" default="">
	<cfargument name="required" required="false" default="">
	<cfargument name="message" required="false" default="">
	<cfargument name="onerror" required="false" default="">
	<cfargument name="onvalidate" required="false" default="">
	<cfargument name="multiple" required="false" default="">
	<cfargument name="query" required="false" default="">
	<cfargument name="display" required="false" default="">
	<cfargument name="value" required="false" default="">
	<cfargument name="group" required="false" default="">
	<cfargument name="selected" required="false" default="">
	<cfargument name="queryPosition" required="false" default="">
	<cfargument name="passthrough" required="false" default="">
	
	<cfselect attributecollection="#arguments.attributecollection#"
		name="#arguments.name#"
		label="#arguments.label#"
		required="#arguments.required#"
		message="#arguments.message#"
		onerror="#arguments.onerror#"
		onvalidate="#arguments.onvalidate#"
		multiple="#arguments.multiple#"
		query="#arguments.query#"
		display="#arguments.display#"
		value="#arguments.value#"
		group="#arguments.group#"
		selected="#arguments.selected#"
		queryPosition="#arguments.queryPosition#"
		passthrough="#arguments.passthrough#"> 	
	</cfselect>
</cffunction>		



<cffunction name="cfservlet" hint="Executes a Java servlets internally, or on an external JRun engine. This tag is used in conjunction with the cfservletparam tag, which passes data to the servlet.">
	<cfargument name="code" required="true" default="">
	<cfargument name="jRunProxy" required="false" default="">
	<cfargument name="timeout" required="false" default="">
	<cfargument name="writeoutput" required="false" default="">
	<cfargument name="debug" required="false" default="">
	
	<cfservlet code="#arguments.code#"
		jRunProxy="#arguments.jRunProxy#"
		timeout="#arguments.timeout#"
		writeoutput="#arguments.writeoutput#"
		debug="#arguments.debug#"> 	
	</cfservlet>
</cffunction>		



<cffunction name="cfservletparam" hint="A child of cfservlet. It passes data to the servlet. Each cfservletparam tag within the cfservlet block passes a separate piece of data to the servlet.">
	<cfargument name="name" required="true" default="">
	<cfargument name="value" required="false" default="">
	<cfargument name="variable" required="false" default="">
	<cfargument name="type" required="false" default="">
	
	<cfif value is not "">
		<cfservletparam name="#arguments.name#"
			value="#arguments.value#"> 	
	<cfelse>
		<cfservletparam name="#arguments.name#"
			variable="#arguments.variable#"
			type="#arguments.type#"> 	
	</cfif>
	
</cffunction>		



<cffunction name="cfsetting" hint="Controls various aspects of page processing, such as the output of HTML code in pages. One benefit of this option is managing whitespace that can occur in output pages served by ColdFusion.">
	<cfargument name="enablecfoutputonly" required="false" default="">
	<cfargument name="showdebugoutput" required="false" default="">
	<!---cfargument name="catchexceptionsbypattern" required="false" default=""--->
	<cfargument name="requestTimeout" required="false" default="">
	
	<cfsetting enablecfoutputonly="#arguments.enablecfoutputonly#"
		showdebugoutput="#arguments.showdebugoutput#"
		<!---catchexceptionsbypattern="#arguments.catchexceptionsbypattern#"--->
		requestTimeout="#arguments.requestTimeout#"> 	
	</cfsetting>
</cffunction>		


<cffunction name="cfsilent" hint="Suppresses all output that is produced within the tag's body.">
	<cfsilent > 	
	</cfsilent>
</cffunction>		


<cffunction name="cfslider" hint="CFSLIDER Tag">
	<!---cfargument name="passthrough" required="false" default="">
	<cfargument name="attributecollection" required="false" default=""--->
	<cfargument name="name" required="true" default="">
	<cfargument name="label" required="false" default="">
	<cfargument name="value" required="false" default="">
	<cfargument name="range" required="false" default="">
	<cfargument name="message" required="false" default="">
	<cfargument name="onerror" required="false" default="">
	<cfargument name="onvalidate" required="false" default="">
	<cfargument name="scale" required="false" default="">
	<cfargument name="height" required="false" default="">
	<cfargument name="width" required="false" default="">
	<cfargument name="vSpace" required="false" default="">
	<cfargument name="hSpace" required="false" default="">
	<cfargument name="align" required="false" default="">
	<cfargument name="tickmarkmajor" required="false" default="">
	<cfargument name="tickmarkminor" required="false" default="">
	<cfargument name="tickmarkimages" required="false" default="">
	<cfargument name="tickmarklabels" required="false" default="">
	<cfargument name="lookandfeel" required="false" default="">
	<cfargument name="vertical" required="false" default="">
	<cfargument name="img" required="false" default="">
	<cfargument name="groovecolor" required="false" default="">
	<cfargument name="bgColor" required="false" default="">
	<cfargument name="textcolor" required="false" default="">
	<cfargument name="font" required="false" default="">
	<cfargument name="fontSize" required="false" default="">
	<cfargument name="italic" required="false" default="">
	<cfargument name="bold" required="false" default="">
	<cfargument name="notsupported" required="false" default="">
	
	<cfslider <!---passthrough="#arguments.passthrough#"
		attributecollection="#arguments.attributecollection#"--->
		name="#arguments.name#"
		label="#arguments.label#"
		value="#arguments.value#"
		range="#arguments.range#"
		message="#arguments.message#"
		onerror="#arguments.onerror#"
		onvalidate="#arguments.onvalidate#"
		scale="#arguments.scale#"
		height="#arguments.height#"
		width="#arguments.width#"
		vSpace="#arguments.vSpace#"
		hSpace="#arguments.hSpace#"
		align="#arguments.align#"
		tickmarkmajor="#arguments.tickmarkmajor#"
		tickmarkminor="#arguments.tickmarkminor#"
		tickmarkimages="#arguments.tickmarkimages#"
		tickmarklabels="#arguments.tickmarklabels#"
		lookandfeel="#arguments.lookandfeel#"
		vertical="#arguments.vertical#"
		img="#arguments.img#"
		groovecolor="#arguments.groovecolor#"
		bgColor="#arguments.bgColor#"
		textcolor="#arguments.textcolor#"
		font="#arguments.font#"
		fontSize="#arguments.fontSize#"
		italic="#arguments.italic#"
		bold="#arguments.bold#"
		notsupported="#arguments.notsupported#"> 	
	</cfslider>
</cffunction>		



<cffunction name="cfstoredproc" hint="Executes stored procedures by an ODBC or native connection to a server database. It specifies database connection information and identifies the stored procedure.">
	<!---cfargument name="name" required="false" default=""--->
	<cfargument name="datasource" required="false" default="">
	<cfargument name="dbtype" required="false" default="">
	<!---cfargument name="sql" required="false" default=""--->
	<cfargument name="username" required="false" default="">
	<cfargument name="password" required="false" default="">
	<!---cfargument name="maxrows" required="false" default=""--->
	<cfargument name="blockfactor" required="false" default="">
	<!---cfargument name="timeout" required="false" default=""--->
	<cfargument name="dbname" required="false" default="">
	<!---cfargument name="cachedafter" required="false" default="">
	<cfargument name="cachedwithin" required="false" default=""--->
	<cfargument name="result" required="false" default="">
	<cfargument name="debug" required="false" default="">
	<cfargument name="procedure" required="true" default="">
	<cfargument name="returncode" required="false" default="">
	
	<cfstoredproc <!---name="#arguments.name#"--->
		datasource="#arguments.datasource#"
		dbtype="#arguments.dbtype#"
		<!---sql="#arguments.sql#"--->
		username="#arguments.username#"
		password="#arguments.password#"
		<!---maxrows="#arguments.maxrows#"--->
		blockfactor="#arguments.blockfactor#"
		<!---timeout="#arguments.timeout#"--->
		dbname="#arguments.dbname#"
		<!---cachedafter="#arguments.cachedafter#"
		cachedwithin="#arguments.cachedwithin#"--->
		result="#arguments.result#"
		debug="#arguments.debug#"
		procedure="#arguments.procedure#"
		returncode="#arguments.returncode#"> 	
	</cfstoredproc>
</cffunction>		



<cffunction name="cftable" hint="Builds a table in a ColdFusion page. Use the cfcol tag to define table column and row characteristics. The cftable tag renders data either as preformatted text, or, with the HTMLTable attribute, as an HTML table. Use cftable to create tables if you don't want to write HTML table tag code, or if your data can be well presented as preformatted text. See Usage for information about using the cfcol tag with the cftable tag.">
	<cfargument name="query" required="false" default="">
	<cfargument name="startrow" required="false" default="">
	<cfargument name="colspacing" required="false" default="">
	<cfargument name="headerlines" required="false" default="">
	<cfargument name="htmltable" required="false" default="">
	<cfargument name="border" required="false" default="">
	<cfargument name="colheaders" required="false" default="">
	<cfargument name="maxrows" required="false" default="">
	
	<cftable query="#arguments.query#"
		startrow="#arguments.startrow#"
		colspacing="#arguments.colspacing#"
		headerlines="#arguments.headerlines#"
		htmltable="#arguments.htmltable#"
		border="#arguments.border#"
		colheaders="#arguments.colheaders#"
		maxrows="#arguments.maxrows#"> 	
	</cftable>
</cffunction>		



<cffunction name="cftextarea" hint="CFTEXTAREA tag">
	<cfargument name="passthrough" required="false" default="">
	<cfargument name="attributecollection" required="false" default="">
	<cfargument name="name" required="true" default="">
	<cfargument name="label" required="false" default="">
	<cfargument name="value" required="false" default="">
	<cfargument name="required" required="false" default="">
	<cfargument name="message" required="false" default="">
	<cfargument name="pattern" required="false" default="">
	<cfargument name="range" required="false" default="">
	<cfargument name="validate" required="false" default="">
	<cfargument name="validateat" required="false" default="">
	<cfargument name="onError" required="false" default="">
	<cfargument name="onValidate" required="false" default="">
	<cfargument name="maxLength" required="false" default="">
	<cfargument name="onkeypress" required="false" default="">
	<cfargument name="bind" required="false" default="">
	
	<cftextarea passthrough="#arguments.passthrough#"
		attributecollection="#arguments.attributecollection#"
		name="#arguments.name#"
		label="#arguments.label#"
		value="#arguments.value#"
		required="#arguments.required#"
		message="#arguments.message#"
		pattern="#arguments.pattern#"
		range="#arguments.range#"
		validate="#arguments.validate#"
		validateat="#arguments.validateat#"
		onError="#arguments.onError#"
		onValidate="#arguments.onValidate#"
		maxLength="#arguments.maxLength#"
		onkeypress="#arguments.onkeypress#"
		bind="#arguments.bind#"> 	
	</cftextarea>
</cffunction>		



<cffunction name="cftextinput" hint="CFTEXTINPUT tag">
	<!---cfargument name="passthrough" required="false" default="">
	<cfargument name="attributecollection" required="false" default=""--->
	<cfargument name="name" required="true" default="">
	<cfargument name="label" required="false" default="">
	<cfargument name="message" required="false" default="">
	<cfargument name="onError" required="false" default="">
	<cfargument name="onValidate" required="false" default="">
	<cfargument name="pattern" required="false" default="">
	<cfargument name="range" required="false" default="">
	<cfargument name="required" required="false" default="">
	<cfargument name="value" required="false" default="">
	<cfargument name="validate" required="false" default="">
	<cfargument name="align" required="false" default="">
	<cfargument name="bgColor" required="false" default="">
	<cfargument name="bold" required="false" default="">
	<cfargument name="font" required="false" default="">
	<cfargument name="fontSize" required="false" default="">
	<cfargument name="height" required="false" default="">
	<cfargument name="hSpace" required="false" default="">
	<cfargument name="italic" required="false" default="">
	<cfargument name="maxLength" required="false" default="">
	<cfargument name="notSupported" required="false" default="">
	<cfargument name="size" required="false" default="">
	<cfargument name="textColor" required="false" default="">
	<cfargument name="vSpace" required="false" default="">
	<cfargument name="width" required="false" default="">
	
	<cftextinput <!---passthrough="#arguments.passthrough#"
		attributecollection="#arguments.attributecollection#"--->
		name="#arguments.name#"
		label="#arguments.label#"
		message="#arguments.message#"
		onError="#arguments.onError#"
		onValidate="#arguments.onValidate#"
		pattern="#arguments.pattern#"
		range="#arguments.range#"
		required="#arguments.required#"
		value="#arguments.value#"
		validate="#arguments.validate#"
		align="#arguments.align#"
		bgColor="#arguments.bgColor#"
		bold="#arguments.bold#"
		font="#arguments.font#"
		fontSize="#arguments.fontSize#"
		height="#arguments.height#"
		hSpace="#arguments.hSpace#"
		italic="#arguments.italic#"
		maxLength="#arguments.maxLength#"
		notSupported="#arguments.notSupported#"
		size="#arguments.size#"
		textColor="#arguments.textColor#"
		vSpace="#arguments.vSpace#"
		width="#arguments.width#"> 	
	</cftextinput>
</cffunction>		



<cffunction name="cfthrow" hint="The cfthrow tag raises a developer-specified exception that can be caught with cfcatch tag having any of the following type specifications: ''custom_type'', ''Application'', ''Any'', or ''java-type''. If the given type matches a java exception type, the java exception is thrown. TODO - improve/approve the java exception type interoperability.">
	<cfargument name="type" required="false" default="">
	<cfargument name="message" required="false" default="">
	<cfargument name="detail" required="false" default="">
	<cfargument name="errorcode" required="false" default="">
	<cfargument name="extendedinfo" required="false" default="">
	<cfargument name="object" required="false" default="">
	
	<cfif arguments.object is not "">
	<cfthrow object="#arguments.object#"> 	
	<cfelse>
		<cfthrow type="#arguments.type#"
			message="#arguments.message#"
			detail="#arguments.detail#"
			errorcode="#arguments.errorcode#"
			extendedinfo="#arguments.extendedinfo#"> 	
	</cfif>
	
</cffunction>		



<cffunction name="cftimer" hint="Created by IntelliJ IDEA. User: mnimer Date: Oct 2, 2003 Time: 6:09:44 PMThis timer tag is designed to place around logical chunks of cfml code.To help find and monitor the speed of your code.attributes: (none required)label - text to display with the debug info.type (default: debug) - debug|outline|inline|commentdebug - will place the info in the debug scope and show the timer info in the classic debug page.outline - If the browser supports the FIELDSET tag it, it will draw a box around the affected code.inline - output the timer marks at the end tag positioncomment - places the timer info in an HTML comment, so if can viewed if you view source but won't affect the page layout.'cftimer' = defined css classes so the user can override the look and feel of the timer tag.There are no type attributes defined, however, by defining a .cftimer classin the html the developer can change the look and feel of the outline typeclass=''cftimer''to modify the fieldset look and field, add a type, like this example, to the calling page.<type>//modify the fieldset look and feel.cftimer{border-color: red;font-family: cursive;}//modify just the legend of the fieldset.cftimer legend{border-color: red;font-family: cursive;}</type>">
	<cfargument name="label" required="false" default="">
	<cfargument name="type" required="false" default="">
	
	<cftimer label="#arguments.label#"
		type="#arguments.type#"> 	
	</cftimer>
</cffunction>		


<cffunction name="cftransaction" hint="Groups multiple queries into a single unit. The cftransaction tag provides commit and rollback processing.">
	<cfargument name="isolation" required="false" default="">
	<cfargument name="action" required="false" default="">
	
	<cftransaction isolation="#arguments.isolation#"
		action="#arguments.action#"> 	
	</cftransaction>
</cffunction>		



<cffunction name="cftree" hint="CFTREE tag">
	<!---cfargument name="passthrough" required="false" default="">
	<cfargument name="attributecollection" required="false" default=""--->
	<cfargument name="name" required="true" default="">
	<cfargument name="label" required="false" default="">
	<cfargument name="value" required="false" default="">
	<cfargument name="required" required="false" default="">
	<cfargument name="message" required="false" default="">
	<cfargument name="onValidate" required="false" default="">
	<cfargument name="onError" required="false" default="">
	<cfargument name="completePath" required="false" default="">
	<cfargument name="format" required="false" default="">
	<cfargument name="font" required="false" default="">
	<cfargument name="align" required="false" default="">
	<cfargument name="lookAndFeel" required="false" default="">
	<cfargument name="delimiter" required="false" default="">
	<cfargument name="height" required="false" default="">
	<cfargument name="width" required="false" default="">
	<cfargument name="border" required="false" default="">
	<cfargument name="hScroll" required="false" default="">
	<cfargument name="vScroll" required="false" default="">
	<cfargument name="appendKey" required="false" default="">
	<cfargument name="highlightHref" required="false" default="">
	<cfargument name="italic" required="false" default="">
	<cfargument name="bold" required="false" default="">
	<cfargument name="notSupported" required="false" default="">
	
	<cftree <!---passthrough="#arguments.passthrough#"
		attributecollection="#arguments.attributecollection#"--->
		name="#arguments.name#"
		label="#arguments.label#"
		value="#arguments.value#"
		required="#arguments.required#"
		message="#arguments.message#"
		onValidate="#arguments.onValidate#"
		onError="#arguments.onError#"
		completePath="#arguments.completePath#"
		format="#arguments.format#"
		font="#arguments.font#"
		align="#arguments.align#"
		lookAndFeel="#arguments.lookAndFeel#"
		delimiter="#arguments.delimiter#"
		height="#arguments.height#"
		width="#arguments.width#"
		border="#arguments.border#"
		hScroll="#arguments.hScroll#"
		vScroll="#arguments.vScroll#"
		appendKey="#arguments.appendKey#"
		highlightHref="#arguments.highlightHref#"
		italic="#arguments.italic#"
		bold="#arguments.bold#"
		notSupported="#arguments.notSupported#"> 	
	</cftree>
</cffunction>		



<cffunction name="cftreeitem" hint="CFTREEITEM tag">
	<!---cfargument name="passthrough" required="false" default="">
	<cfargument name="attributecollection" required="false" default=""--->
	<cfargument name="display" required="false" default="">
	<cfargument name="expand" required="false" default="">
	<cfargument name="href" required="false" default="">
	<cfargument name="img" required="false" default="">
	<cfargument name="imgOpen" required="false" default="">
	<cfargument name="parent" required="false" default="">
	<cfargument name="query" required="false" default="">
	<cfargument name="queryAsRoot" required="false" default="">
	<cfargument name="target" required="false" default="">
	<cfargument name="value" required="true" default="">
	
	<cftreeitem <!---passthrough="#arguments.passthrough#"
		attributecollection="#arguments.attributecollection#" --->
		display="#arguments.display#"
		expand="#arguments.expand#"
		href="#arguments.href#"
		img="#arguments.img#"
		imgOpen="#arguments.imgOpen#"
		parent="#arguments.parent#"
		query="#arguments.query#"
		queryAsRoot="#arguments.queryAsRoot#"
		target="#arguments.target#"
		value="#arguments.value#"> 	
	</cftreeitem>
</cffunction>		



<cffunction name="cfupdate" hint="Updates existing records in data sources.">
	<!---cfargument name="name" required="false" default=""--->
	<cfargument name="datasource" required="false" default="">
	<cfargument name="dbtype" required="false" default="">
	<cfargument name="username" required="false" default="">
	<cfargument name="password" required="false" default="">
	<!---cfargument name="maxrows" required="false" default="">
	<cfargument name="debug" required="false" default="">
	<cfargument name="blockfactor" required="false" default="">
	<cfargument name="result" required="false" default="">
	<cfargument name="sql" required="false" default="">
	<cfargument name="cachedafter" required="false" default="">
	<cfargument name="cachedwithin" required="false" default="">
	<cfargument name="timeout" required="false" default=""--->
	<cfargument name="dbname" required="false" default="">
	<cfargument name="tablename" required="true" default="">
	<cfargument name="tableowner" required="false" default="">
	<cfargument name="tablequalifier" required="false" default="">
	<cfargument name="formfields" required="false" default="">
	
	<cfupdate <!---name="#arguments.name#"--->
		datasource="#arguments.datasource#"
		dbtype="#arguments.dbtype#"
		<!---sql="#arguments.sql#"--->
		username="#arguments.username#"
		password="#arguments.password#"
		<!---maxrows="#arguments.maxrows#"
		blockfactor="#arguments.blockfactor#"
		timeout="#arguments.timeout#" --->
		dbname="#arguments.dbname#"
		<!---cachedafter="#arguments.cachedafter#"
		cachedwithin="#arguments.cachedwithin#"
		result="#arguments.result#"
		debug="#arguments.debug#"--->
		tablename="#arguments.tablename#"
		tableowner="#arguments.tableowner#"
		tablequalifier="#arguments.tablequalifier#"
		formfields="#arguments.formfields#"> 	
	
</cffunction>		



<cffunction name="cfwddx" hint="The WDDX tag serializes and deserializes CFML data structures to the XML-based WDDX format. You can also use it to generate Javascript statements instantiating JavaScript objects equivalent to the contents of a WDDX packet or some CFML or Java data structures.">
	<cfargument name="action" required="true" default="">
	<cfargument name="input" required="true" default="">
	<cfargument name="toplevelvariable" required="false" default="">
	<cfargument name="output" required="false" default="">
	<cfargument name="validate" required="false" default="">
	<cfargument name="usetimezoneinfo" required="false" default="">
	
	<cfwddx action="#arguments.action#"
		input="#arguments.input#"
		toplevelvariable="#arguments.toplevelvariable#"
		output="#arguments.output#"
		validate="#arguments.validate#"
		usetimezoneinfo="#arguments.usetimezoneinfo#"> 	
	
</cffunction>		



<cffunction name="cfx" hint="this tag invokes Java CFX's that implement the CustomTag interface. TODO this tag should probably be in compiler.tagext.lang">
	<cfargument name="attributecollection" required="false" default="">
	<cfargument name="class" required="true" default="">
	
	<cfx attributecollection="#arguments.attributecollection#"
		class="#arguments.class#"> 	
	
</cffunction>		



<cffunction name="cfxml" hint="Turns all the text inside the body of tag into an XML document.">
	<cfargument name="caseSensitive" required="false" default="">
	<cfargument name="variable" required="true" default="">
	
	<cfxml caseSensitive="#arguments.caseSensitive#"
		variable="#arguments.variable#"> 	
	
</cffunction>
