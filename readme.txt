The file you'll want to include is scriptagulous/scriptagulous.cfm.

Currently, it only successfully /compiles/ on CF7.  There has been no actual testing as of June 4, 2007 9AM Central Time.

Some tags, such as cfmail and cfhttp include extra parameters for their respective "params."  The general guideline followed is that it is an array of structs - each struct is full of name/value pairs that represent the param tag's attributes. 

Please join the Google group at http://groups.google.com/group/scriptaGulous and let us know of any issues you encounter.  They'll be fixed relatively quickly, and it will help us to write some tests.  You can also use the forums and issue trackers here at RIAForge.

There has been some suggestion about packaging this into CFCs.  That will probably happen down the line, but it will be an option to use instead of simply including the entire file.  