module utils;

import std.file;
import std.stdio;

string readFile(string fileName){
  string content;
  try{
    content = readText(fileName);
  }
  catch (Exception e)
  {
    writeln("Error reading file: ", e.msg);
    return "";
  }

  return content;
}
