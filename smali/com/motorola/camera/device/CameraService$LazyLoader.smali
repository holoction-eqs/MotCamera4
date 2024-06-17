.class public abstract Lcom/motorola/camera/device/CameraService$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/device/CameraService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/device/CameraService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/device/CameraService;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    return-void
.end method
