.class public final Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;
.super Lcom/motorola/camera/fsm/camera/record/CaptureRecord;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    return-void
.end method
