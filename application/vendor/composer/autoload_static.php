<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit49a4a591918163bc7b72627d74ca2f73
{
    public static $prefixLengthsPsr4 = array (
        'W' => 
        array (
            'WebPConvert\\' => 12,
        ),
        'I' => 
        array (
            'ImageMimeTypeGuesser\\' => 21,
        ),
        'D' => 
        array (
            'DavGothic\\SmushIt\\' => 18,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'WebPConvert\\' => 
        array (
            0 => __DIR__ . '/..' . '/rosell-dk/webp-convert/src',
        ),
        'ImageMimeTypeGuesser\\' => 
        array (
            0 => __DIR__ . '/..' . '/rosell-dk/image-mime-type-guesser/src',
        ),
        'DavGothic\\SmushIt\\' => 
        array (
            0 => __DIR__ . '/..' . '/davgothic/smushit/src',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit49a4a591918163bc7b72627d74ca2f73::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit49a4a591918163bc7b72627d74ca2f73::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
