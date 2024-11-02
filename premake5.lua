workspace "OpenSSL"
    configurations { "Debug", "Release" }
    platforms { "x86", "x64" }

    filter "system:windows"
        systemversion "latest"
        defines { "_CRT_SECURE_NO_WARNINGS" }

    filter {}

project "crypto"
    kind "StaticLib"
    language "C"
    targetdir "build/%{cfg.buildcfg}"
    objdir "build/%{cfg.buildcfg}/int"

    includedirs {
        "%{prj.location}/include",
        "%{prj.location}/crypto",
        "%{prj.location}/ssl"
    }

    files {
        "crypto/**.c",
        "crypto/**.h"
    }

    filter "system:windows"
        defines { "WIN32_LEAN_AND_MEAN", "OPENSSL_SYS_WINDOWS" }

    filter "system:linux"
        defines { "OPENSSL_SYS_LINUX" }

        links {
            "pthread",
            "dl"
        }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"

    filter {}

project "ossl"
    kind "StaticLib"
    language "C"
    targetdir "build/%{cfg.buildcfg}"
    objdir "build/%{cfg.buildcfg}/int"

    includedirs {
        "%{prj.location}/include",
        "%{prj.location}/crypto",
        "%{prj.location}/ssl"
    }

    links {
        "crypto"
    }

    files {
        "ssl/**.c",
        "ssl/**.h"
    }

    defines {
        "NO_WINDOWS_BRAINDEATH"
    }

    defines {
        "OPENSSL_NO_FIPS"
    }

    filter "system:windows"
        defines {
            "WIN32_LEAN_AND_MEAN",
            "_CRT_SECURE_NO_DEPRECATE",
            "OPENSSL_SYSNAME_WIN32",
            "OPENSSL_SYS_WINDOWS"
        }

    filter "system:linux"
        defines { "OPENSSL_SYS_LINUX" }

        links {
            "pthread",
            "dl"
        }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"

    filter {}
