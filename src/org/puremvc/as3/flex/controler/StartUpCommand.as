
package org.puremvc.as3.flex.controler {
	import org.puremvc.as3.patterns.command.MacroCommand;
	
	public class StartUpCommand extends MacroCommand {
		override protected function initializeMacroCommand():void {
			addSubCommand(PrepModelCommand);
			addSubCommand(PrepViewCommand);
			addSubCommand( InitCommand );
		}
	}
}