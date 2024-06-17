.class public final Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;->$r8$classId:I

    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    move-object v3, p1

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v4, p2

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2
    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;ZI)V

    sget-object p2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->Companion:L_COROUTINE/ArtificialStackFrames;

    .line 3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->submitTask(Ljava/lang/Runnable;)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 5
    :goto_0
    check-cast p1, Lkotlinx/coroutines/selects/SelectInstance;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;->invoke(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 6
    new-instance p2, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;

    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-direct {p2, p3, p0, p1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/SelectInstance;)V

    return-object p2
.end method
