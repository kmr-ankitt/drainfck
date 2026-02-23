import lexer;
import parser;

import std.stdio;


void lex(string fileContent)
{
  if (fileContent == "")
  {
    writeln("Error: Empty file content.");
    return;
  }

  enum SIZE = 30_000;
  int[SIZE] container;

  /*
  * Program counter
  * - keeps track of where you are in the source code being interpreted
  * Data counter
  * - keeps track of where you are in the memory array (container) that holds the
  */
  size_t programCounter = 0;
  size_t dataCounter = 0;
  parser.parse(fileContent, programCounter, dataCounter, container);
}
