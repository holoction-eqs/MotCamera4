.class public abstract Lcom/airbnb/lottie/parser/MergePathsParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NAMES:Lcom/motorola/camera/device/CameraService;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "mm"

    const-string v1, "hd"

    const-string v2, "nm"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->of([Ljava/lang/String;)Lcom/motorola/camera/device/CameraService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    return-void
.end method
