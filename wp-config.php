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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */



// define( 'DB_NAME', 'markwp' );

// /** MySQL database username */
// define( 'DB_USER', 'root' );

// /** MySQL database password */
// define( 'DB_PASSWORD', '' );

// /** MySQL hostname */
// define( 'DB_HOST', 'localhost' );

// /** Database Charset to use in creating database tables. */
// define( 'DB_CHARSET', 'utf8mb4' );

// /** The Database Collate type. Don't change this if in doubt. */
// define( 'DB_COLLATE', '' );
// 
// 

if (file_exists(dirname(__FILE__)."/local.php")) {
	//Local database settings


	define( 'DB_NAME', 'markwp' );
	define( 'DB_USER', 'root' );
	define( 'DB_PASSWORD', '' );
	define( 'DB_HOST', 'localhost' );
	define( 'DB_CHARSET', 'utf8mb4' );
	define( 'DB_COLLATE', '' );
}
else{
	//Live database settings
	define( 'DB_NAME', 'epiz_25589315_markwp' );
	define( 'DB_USER', 'root' );
	define( 'DB_PASSWORD', '-_W+]x%udM8l' );
	define( 'DB_HOST', 'ftpupload.net' );
	define( 'DB_CHARSET', 'utf8mb4' );
	define( 'DB_COLLATE', '' );
}



/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ']#]&~JV.UV3d~A{.ZpwVVS{o}.(zv_K2+1w38]I48/uL9M`ol+C ~.W1|lP&igZ]' );
define( 'SECURE_AUTH_KEY',  '*A$f}Z&?=[On8EEi$)^<:c.]CPxzU%1,qjBg/A}E:#%N%2=p[]VgzJi87gSvs1Ad' );
define( 'LOGGED_IN_KEY',    'uJ[4B(~=)>Q2iUe@@aa6SRAoEQcE7zZCCi),2<P&3#;f3mLfhqXcdgNNLN691xL[' );
define( 'NONCE_KEY',        'dO3#wZ3%?w:{%]fRXNh([At8-3-o(g}0,EnMaZVD aGN6*j`-5cKYb_YC^ZY%)Pu' );
define( 'AUTH_SALT',        'u%IUv)Gxf},H<j_g#Z<ktyd!PSz}ay.fl}Lt5_|YC).sl)`*s=:1g{v85|>EGAEY' );
define( 'SECURE_AUTH_SALT', '{~zC QuxMZdT! 8vl#I}VRrhiLr_gR&Hz+*4*5]>h-$@(s9qx`Ss,rZnKXCL%.gy' );
define( 'LOGGED_IN_SALT',   'q j|GY6T_}Eo:QC)o]gg?WZN_S9%!OY~wA!{*xHA=Jgft9Y)j?gui i)+l0L3-2e' );
define( 'NONCE_SALT',       'U!y!D.2ds2*?|$4K:+gNQ^~lQT#)N[2;Xm,0IEn$AJ*}s>+.x}1x|iC#:jb)mODt' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
