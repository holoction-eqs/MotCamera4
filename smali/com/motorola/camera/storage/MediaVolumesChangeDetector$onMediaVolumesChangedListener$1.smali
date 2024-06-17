.class public final Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/ChangeEvent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;->this$0:Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaVolumesChanged()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;->this$0:Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/ChangeEvent;->processMediaVolumes()V

    return-void
.end method
