module help;

import std.stdio;

void run()
{
  writeln("Usage:");
  writeln("  drainfck <operation> <filename>");
  writeln();
  writeln("Operations:");
  writeln("  run     - Run the specified file");
  writeln("  compile - Compile the specified file");
  writeln();
  writeln("Example:");
  writeln("  drainfck run myscript.bf");
}
