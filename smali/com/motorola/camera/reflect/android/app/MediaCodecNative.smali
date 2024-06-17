.class public abstract Lcom/motorola/camera/reflect/android/app/MediaCodecNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IS_INITIALIZED:Z

.field public static final sMethodQueryRemainderCapability:Ljava/lang/reflect/Method;

.field public static final target:Landroid/media/MediaCodec;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/media/MediaCodec;

    const-string v2, "video/avc"

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/reflect/android/app/MediaCodecNative;->target:Landroid/media/MediaCodec;

    const-string v2, "queryRemainderCapability"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/reflect/android/app/MediaCodecNative;->sMethodQueryRemainderCapability:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const-string v1, "MediaCodecNative"

    const-string v2, "unable to initialize class"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sput-boolean v0, Lcom/motorola/camera/reflect/android/app/MediaCodecNative;->IS_INITIALIZED:Z

    return-void
.end method
