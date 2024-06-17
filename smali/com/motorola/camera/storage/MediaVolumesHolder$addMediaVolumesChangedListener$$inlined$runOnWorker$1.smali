.class public final Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $listener$inlined:Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;->$listener$inlined:Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;->$listener$inlined:Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumesChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :goto_0
    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumesChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
