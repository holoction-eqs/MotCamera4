.class public abstract Lcom/motorola/camera/service/CameraForegroundServiceManager$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/service/CameraForegroundServiceManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/service/CameraForegroundServiceManager;

    invoke-direct {v0}, Lcom/motorola/camera/service/CameraForegroundServiceManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/service/CameraForegroundServiceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/CameraForegroundServiceManager;

    return-void
.end method
