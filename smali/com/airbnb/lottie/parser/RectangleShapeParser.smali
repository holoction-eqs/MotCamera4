.class public abstract Lcom/airbnb/lottie/parser/RectangleShapeParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NAMES:Lcom/motorola/camera/device/CameraService;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "r"

    const-string v1, "hd"

    const-string v2, "nm"

    const-string v3, "p"

    const-string v4, "s"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->of([Ljava/lang/String;)Lcom/motorola/camera/device/CameraService;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/RectangleShapeParser;->NAMES:Lcom/motorola/camera/device/CameraService;

    return-void
.end method
