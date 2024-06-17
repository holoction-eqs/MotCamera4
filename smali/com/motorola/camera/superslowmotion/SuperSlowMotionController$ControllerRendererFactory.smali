.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;
.super Landroidx/media3/exoplayer/DefaultRenderersFactory;
.source "SourceFile"


# instance fields
.field public final listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;->listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;

    return-void
.end method
