import std.stdio;

import repl;
import help;

void main(string[] args)
{
  if (args.length == 1)
  {
    /* 
    * if no args given, then start interpreter in REPL mode
    */
    repl.run();
  }
  else if (args.length == 3)
  {
    /*
    * example usage:
    * drainfck <operation> <filename>
    *
    * first arg is the executable name, which is ignored,
    * second arg is operation which tells what to do with the file, e.g. "run" or "compile"
    * third arg is the filename to perform operation
    */

    string operation = args[1];
    string filename = args[2];
    char[2] extension = [filename[$ - 2], filename[$ - 1]];

    if (extension != "bf")
    {
      help.run();
      return;
    }

    switch (operation)
    {
    case "compile":
      writeln("Compiling ", filename, "...");
      break;

    case "run":
      writeln("Running ", filename, "...");
      break;

    default:
      help.run();
      break;
    }
  }
  else
  {
    help.run();
  }
}
