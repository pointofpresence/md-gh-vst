Dim paths.s(1)
paths(0) = "F:\__MD_GH_PAGES\md-gh-vst\Generators"
paths(1) = "F:\__MD_GH_PAGES\md-gh-vst\Effects"

Define i
Define content.s = ""

For i = 0 To ArraySize(paths()) - 1
  If ExamineDirectory(0, paths(i), "*.png")
    Define dir.s = GetFilePart( paths(i))
    
    While NextDirectoryEntry(0)
      If DirectoryEntryType(0) = #PB_DirectoryEntry_File       
        Define name.s = GetFilePart(DirectoryEntryName(0) , #PB_FileSystem_NoExtension)       
        
        content + "<p class='mb-0'><img align='left' src='" + dir + "/" + DirectoryEntryName(0) + "' /></p>" + #CRLF$ +
                  #CRLF$ + 
                  "### " + name + #CRLF$ +
                  #CRLF$ +
                  #CRLF$ +
                  #CRLF$ +
                  "-----" +
                  #CRLF$ +
                  #CRLF$
      EndIf      
    Wend
    
    FinishDirectory(0)
  EndIf
Next  

Debug content
; IDE Options = PureBasic 5.72 (Windows - x64)
; CursorPosition = 19
; EnableXP
; CompileSourceDirectory
; EnableCompileCount = 9
; EnableBuildCount = 0
; EnableExeConstant