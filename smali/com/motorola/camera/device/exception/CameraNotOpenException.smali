.class public final Lcom/motorola/camera/device/exception/CameraNotOpenException;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    const-string p1, "Camera session is not opened"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
