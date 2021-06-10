# Installation and Setup

`@version     2.3.1`

### Pre-Requisites

  * NodeJS and npm
  * Git BASH terminal

### Initial Setup

  1. Set the Lyquix template as the default template for your site.
  2. Copy or rename [`custom.dist.php`](../custom.dist.php) to `custom.php`.
  3. Copy or rename [`css/styles.dist.scss`](../css/styles.dist.scss) to `css/styles.scss`.
  4. Copy or rename [`css/custom/custom.dist.scss`](../css/custom/custom.dist.scss) to `css/custom/custom.scss`.
  5. Copy or rename [`css/css.dist.sh`](../css/css.dist.sh) to `css/css.sh`.
  6. Copy or rename [`js/scripts.dist.scss`](../js/scripts.dist.scss) to `js/scripts.js`.
  7. Copy or rename [`js/js.dist.sh`](../js/js.dist.sh) to `js/js.sh`.
  8. Run `npm install` once to get all local packages installed
  9. Run `npx gulp` to get the gulp watcher started and have CSS and JS files automatically processed when saved. You may need to restart gulp after creating new CSS and JS files to ensure they are being watched.

### Customizing the Template

  * This template has been developed to allow for complete customization to meet the needs of your project.
  * Do not edit the files distributed in the template, as they will be overwritten when you upgrade the template with a newer release.
  * **Custom Styles**:
    * Customize your configuration variables, and control what mixins to import in `css/styles.scss`.
    * If you need to make changes to the styles found in [`css/lib/`](../css/lib/), do not modify these files, instead make a copy to [`css/custom/`](../css/custom/).
    * Create custom SCSS files in [`css/custom/`](../css/custom/) and import them in `css/custom/custom.scss`.
  * **Custom Scripts**:
    * Add common functions and minor functionality to `js/scripts.js`.
    * Create custom Vue controllers and components and save them to [`js/custom/controllers/`](../js/custom/controllers/) and [`js/custom/components/`](../js/custom/components/).
  * You can do `npm install` and then `gulp` to have CSS and JS files automatically processed whenever there are any changes to SCSS and JS files.
