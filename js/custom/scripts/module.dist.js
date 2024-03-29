/**
 * module.dist.js - Sample custom script module
 *
 * @version     2.3.1
 * @package     lyquix_html
 * @author      Lyquix
 * @copyright   Copyright (C) 2015 - 2018 Lyquix
 * @license     GNU General Public License version 2 or later
 * @link        https://github.com/Lyquix/lyquix_html
 */

if($lqx && !('module' in $lqx)) {
	$lqx.module = (function(){
		var opts = {
			/**
			 * Place options and parameters specific to this module
			 */
		};

		var vars = {
			/**
			 * If needed the variable data structure for the module can be added here
			 */
		};

		// Init function for module
		var init = function(){
			// Copy default opts and vars
			jQuery.extend(true, $lqx.opts.module, opts);
			opts = $lqx.opts.module;
			jQuery.extend(true, $lqx.vars.module, vars);
			vars = $lqx.vars.module;

			// Initialize on $lqxready
			$lqx.vars.window.on('$lqxready', function() {
				// Initialize only if enabled
				if(opts.enabled) {
					lqx.log('Initializing `module`');

					/**
					 * Add initialization logic here
					 *
					 * For example:
					 * - Add an event listener to Wait for a specific event like lqx.vars.document.ready
					 * - Check if we are on the correct page
					 * - Call a separate setup function (instead of having all the code right here)
					 * - If needed, add listeners for load, screensizechange, orientationchange, resizethrottle, scrollthrottle
					 * - If needed, add mutation observers that will setup new elements added dynamically later
					 */
				}
			});

			// Removes the init function to prevent it from running more than one
			return $lqx.module.init = true;
		};

		return {
			init: init
		};
	})();
	$lqx.module.init();
}
