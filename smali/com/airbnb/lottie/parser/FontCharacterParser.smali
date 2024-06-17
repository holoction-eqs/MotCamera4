.class public abstract Lcom/airbnb/lottie/parser/FontCharacterParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATA_NAMES:Lcom/motorola/camera/device/CameraService;

.field public static final NAMES:Lcom/motorola/camera/device/CameraService;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "ch"

    const-string v1, "size"

    const-string v2, "w"

    const-string v3, "style"

    const-string v4, "fFamily"

    const-string v5, "data"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->of([Ljava/lang/String;)Lcom/motorola/camera/device/CameraService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/FontCharacterParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    const-string v0, "shapes"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->of([Ljava/lang/String;)Lcom/motorola/camera/device/CameraService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/FontCharacterParser;->DATA_NAMES:Lcom/motorola/camera/device/CameraService;

    return-void
.end method
