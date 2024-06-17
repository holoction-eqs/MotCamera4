.class public final Lcom/motorola/camera/saving/SaveImageService$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$cameraData:Lcom/motorola/camera/CameraData;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/app/Activity;Lcom/motorola/camera/CameraData;)V
    .locals 0

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/motorola/camera/saving/SaveImageService$1;->val$cameraData:Lcom/motorola/camera/CameraData;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 2

    const/16 p1, 0x8

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object p1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object p1, p1, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$1;->val$cameraData:Lcom/motorola/camera/CameraData;

    new-instance p2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/CameraData;I)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
