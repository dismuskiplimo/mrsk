<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'mrsk');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ':%`/SBf5IE5kxZQhlU)<K`{PnwGB1cA,pV/Y`P]=_C8T;NJ<^&2j9[!xr$Mmcy A');
define('SECURE_AUTH_KEY',  'v8dML+S7jG?J%B,*3*^?Ii`I0&CM.yG6b/mgn}BL;B_Z}-3rWT]l>|uATw>/w?S5');
define('LOGGED_IN_KEY',    '~2O.+1u`( ZP9%}AmA)M<GGBPkE;HH|$1}Dx 5KU%$G~][0/eFgEX&fErJ#U44&=');
define('NONCE_KEY',        'n#]h,k@,gVPee;/;`s#(17F?^8]:6mt]}M#%rw<^3]_5`4%Ljh!K9&t>Tc&61N80');
define('AUTH_SALT',        ')t@?ugp~&4s!9 saMdE@^]<DX4#A^xx5q *g?[O-2aKL@RS;QhE2#jrL[};aU>4M');
define('SECURE_AUTH_SALT', '8`RODLZt=n`[Ie0_+JU)nFv&b`5]Et1R,9Z;]9uQ rc;c@u3-A2/HsksC? [&osf');
define('LOGGED_IN_SALT',   ':NsE# D5a1~@WLaI&xU??>r5n,&Va1awbw^#V:_)=u8Ox/J2?dGLqHU| ByU|:W*');
define('NONCE_SALT',       'bJ E5`>_mGKl`J6(;DrZF<:@+gB>&}#tX9RXro!-f+ nk2OxT]m892eDY^D~qVhi');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
