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

define( 'DB_NAME', "rayhanu1_thecoolstore" );


/** MySQL database username */

define( 'DB_USER', "rayhanu1_thecoolstore" );

// new added this line by administrator
set_time_limit(300);


/** MySQL database password */

define( 'DB_PASSWORD', "bYkIT\$)Tg7PBnk" );


/** MySQL hostname */

define( 'DB_HOST', "localhost" );


/** Database Charset to use in creating database tables. */

define( 'DB_CHARSET', 'utf8mb4' );


/** The Database Collate type. Don't change this if in doubt. */

define( 'DB_COLLATE', '' );


/**#@+

 * Authentication Unique Keys and Salts.

 *

 * Change these to different unique phrases!

 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}

 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.

 *

 * @since 2.6.0

 */

define( 'AUTH_KEY',         'yx2?b@pYo6-Y,`UY,5t>(MaPF,zW|;+VA=J,dA/1K~`/h/1=cJa8GdsNZX,3>q14' );

define( 'SECURE_AUTH_KEY',  '#nU=b`_hVr@d`%1qEa:BheG;~o=/~K4n&sH^!AU@:bK[pSK1:({nDGum`(u6g!cz' );

define( 'LOGGED_IN_KEY',    'k]ry04_qFt)~V?usryYeh_zM<Yu/ezq;ZJALlylrj?a2=9t9-]%I$[v/+G?&DPk7' );

define( 'NONCE_KEY',        '>p%L2|}qc^Bg%`*Mztt0b7-V%%WTt4s=gs@591azeo&-`j3]pYCp5/*}d-jW@1LO' );

define( 'AUTH_SALT',        'DCLwfxoCMConvTt+u-.35 YV?F69:Rr+OAo4_W eqISAqGA~b=pp^c%9mL1}wef/' );

define( 'SECURE_AUTH_SALT', '~@u`4=et2Y6LyQ%-Zzl>*m.#iz;tVuxMy 66vI^n^Jc%NaneaTgcVU&PCD6#8{`4' );

define( 'LOGGED_IN_SALT',   'e4:O|IV`H:,D:?]*{/qhYI}SUR-aAYN%}_OpRL;1]R#>U2}E(njfV^|^Q/^S^<La' );

define( 'NONCE_SALT',       'xTw_>!/y8BcR=pYZb/Do$p]oZnU;hC&/(if!Knlw*=]$*}X+c^zdH6x_!t66>fiO' );


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

