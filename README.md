# Lyquix HTML Template 2.x

`@version     2.3.1`

## What is this?

We started development of our HTML template in 2014, for use in our client projects. The goals of this template are:

1. **Best Practices**: the template provides a base HTML/CSS/JavaScript foundation that implements best practices we have learned over the years.
2. **Code Reuse and Consistency**: we don't want to re-invent (and re-type) code for every project, this template is built with re-usability and consistency in mind.
3. **Flexibility**: every project has a unique design, and this template provides full flexibility of layout, styling, and functionality.
4. **Updates**: the template allows to update the core files to fix bugs and add improvements without affecting the customizations of your project.


## Is this template for you?

This template is intended for advanced developers, or those looking to learn advanced template development.

If you are looking for a "one-click & go" template, this is not for you. After you first install this template you will see a blank page with an error message on your homepage.

This template is intended to be the foundation for developers that build custom templates from scratch. This is not a pre-made template that looks pretty and you tweak to fit your design.

## Features

### Responsive Framwork

  * Defines 5 screen sizes, we call them xs, sm, md, lg and xl, and they have very simple breakpoints: 320px, 640px, 960px, 1280px and 1600px.
  * If needed, it is possible to configure fewer screens or different breakpoints.
  * Containers width, max-width, and margins can be customized per-screen.
  * Blocks are fluid and their width is defined as fraction or percentage of the parent element. Block sizes can be defined per-screen.
  * All elements are set to `box-sizing: border-box`.
  * Several utility classes for managing layout, including CSS grid, and flexbox.
  * Responsive CSS is accomplished by using the screen attribute in the body tag `body[screen=sm]`, instead of media queries.

### [CSS](docs/css.md)

  * Developed using SASS.
  * Normalizes default CSS stylesheet across browsers.
  * Easily setup the base styles of your site by configuring variables.
  * Save time by using hundreds of common utility classes available in the CSS library:
    * Styles for HTML elements
    * Responsive layout: blocks, containers, CSS grid, and flexbox
    * Floating, clearing
    * Show/hide per screen size and device type
    * Text styles
    * Colors and filters
    * Menus, accordions, and tabs
    * Styles for printing
  * Choose what components of the library to include in your project

### [JavaScript](docs/js.md)

  * lyquix.js, our library of scripts includes the following functionality
    * Custom events: lqxready, resizethrottle, scrollthrottle, geolocateready
    * Simple implementation of mutation handlers
    * Detection of OS, device type, browser type/version, URL parts, and URL parameters
    * Support functionality for accordions, tabs, menus, lightboxes, and popups
    * Analytics functions to track outbound links, download links, active time, scroll depth, video usage, rage clicks, JavaScript errors
    * Geolocation using IP address or GPS, utility functions to test location against circle, square, and polygon regions
    * Autoresize textarea, input and select elements to display values
    * Fit text to specific number of lines
    * Utility functions: cookies, swipe detection, unique URLs to prevent caching, sprintf porting, encryption, decryption
    * Adds new functions to the String prototype: capitalize, slugify, latinize, camel case, kebab case, snake care, and detection of useful patterns like credit cards, email, SSN, URL, US phone, and ZIP code
  * Uses polyfill.io to automatically load JS polyfills, customized for each browser type and version
  * Choose what modules of the library to include in your project.

### IE Support

  * Only IE11 is supported. We were hoping to stop supporting IE11 by July 2018, but here we are.
  * Sets X-UA-Compatible tag
  * The lyquix.js detect functionality adds classes to body tag that identify browser type and version
  * Fixes for IE11
    * Adds width attribute to images when missing
    * Reverts font-features to normal to prevent issues with Google Fonts
    * Attempts to fix CSS grids
  * Option to display outdated browser alert on selected IE versions

### Other Features

  * Favicons: when present in folder `images/favicon/` it automatically loads favicons into the `<head>` tag.
  * Shell scripts for processing CSS and JS files.
  * Comicfy and Almost7: add `comicfy` or `almost7` URL parameter to have some fun.

## Documentation

  * [Installation, Setup and Customization](docs/install.md)
  * [Template Files and Module Positions](docs/xml.md)
  * [CSS](docs/css.md)
  * [JavaScript](docs/js.md)
  * [Lyquix Options](docs/lqxoptions.md)
  * [Favicons](docs/favicons.md)

## To Do and Ideas

Refer to the Issues in this repo
