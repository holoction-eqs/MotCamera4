.class public abstract Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IS_INITIALIZED:Z

.field public static final sMethodGetDefault:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityManagerNative"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "asInterface"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getDefault"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->sMethodGetDefault:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    const-string v1, "ActivityManagerNative"

    const-string v2, "unable to initialize class"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sput-boolean v0, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->IS_INITIALIZED:Z

    return-void
.end method

.method public static getDefault()Lcom/motorola/camera/reflect/android/app/IActivityManager;
    .locals 3

    sget-boolean v0, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->IS_INITIALIZED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->sMethodGetDefault:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/reflect/android/app/IActivityManager;

    invoke-direct {v2, v0}, Lcom/motorola/camera/reflect/android/app/IActivityManager;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const-string v0, "ActivityManagerNative"

    const-string v2, "unable to invoke getDefault"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method
