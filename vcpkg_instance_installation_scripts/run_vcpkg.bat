:: Set Cuda Path variable to 10.1
setx CUDA_PATH "C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v10.1" /m

:: Set the variables of vcpkg
set VCPKG_HOME=F:\vcpkg
set VCPKG_INSTANCE_DIR=%VCPKG_HOME%\realtime_cuda_10_1_instance
set VCPKG_DOWNLOADS_DIR=%VCPKG_INSTANCE_DIR%\downloads
set VCPKG_BUILDTREES_DIR=%VCPKG_INSTANCE_DIR%\buildtrees
set VCPKG_INSTALLED_DIR=%VCPKG_INSTANCE_DIR%\installed
set VCPKG_PACKAGES_DIR=%VCPKG_INSTANCE_DIR%\packages
set VCPKG_BINARY_SOURCE_CACHE_DIR=%VCPKG_INSTANCE_DIR%\cache

:: Install basic packages
call %VCPKG_HOME%\vcpkg.exe ^
--triplet=x64-windows ^
--downloads-root="%VCPKG_DOWNLOADS_DIR%" ^
--x-buildtrees-root="%VCPKG_BUILDTREES_DIR%" ^
--x-install-root="%VCPKG_INSTALLED_DIR%" ^
--x-packages-root="%VCPKG_PACKAGES_DIR%" ^
--binarysource=clear ^
--binarysource=files,"%VCPKG_BINARY_SOURCE_CACHE_DIR%",readwrite ^
install