function formatGoFile()
   -- Get the full file path  
   local command = string.format("!gofmt -w %s", vim.fn.expand('%:p'))
   vim.cmd(command)
   print("File formated successfully !")
end

function formatFile() 
   -- Getting the extension of current buffered file .
   local fileExtension = getFileExtension(vim.fn.bufname("%"))
   local command = "" 

   -- For Go Files
   if (fileExtension == "go") then
      print("This is a go file")
      command = string.format("!gofmt -w %s", vim.fn.expand('%:p'))
      vim.cmd(command)

   -- For Python Files
   elseif (fileExtension == "py") then 
      print("This is a python file")
      command = string.format("!black %s", vim.fn.expand('%:p'))
      vim.cmd(command)

   -- For C/C++ Files
   elseif (fileExtension == "c" or fileExtension == "cpp") then 
      print("This is a python file")
      command = string.format("!indent -br -bl -hnl %s", vim.fn.expand('%:p'))
      vim.cmd(command)

   else
      print(string.format("No formatter detected for %s files", fileExtension))
   end

end

function getFileExtension(filename)
    local dot_index = filename:find("%.[^%.]+$")
    if dot_index then
        return filename:sub(dot_index + 1)
    else
        return nil -- No extension found
    end
end


