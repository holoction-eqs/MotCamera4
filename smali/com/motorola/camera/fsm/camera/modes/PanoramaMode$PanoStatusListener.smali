.class public final Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/panorama/PanoListener;


# instance fields
.field public final mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;->this$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public final bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
