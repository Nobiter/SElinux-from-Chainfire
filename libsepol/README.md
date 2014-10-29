Android builds with ndk r10c:

ndk-build -B NDK_PROJECT_PATH=. NDK_TOOLCHAIN_VERSION=4.9 APP_BUILD_SCRIPT=Android.mk APP_ABI=all APP_PLATFORM=android-14 APP_PIE=true