.class public final Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaSaveComplete(Lcom/motorola/camera/storage/MediaFile;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->$r8$classId:I

    const-string v1, "mediaFile"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :goto_0
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->expectedSlowMotionFileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    iget-object v1, v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionFile:Lcom/motorola/camera/storage/SharedMediaFile;

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->$r8$classId:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    if-eqz v0, :cond_0

    const-string v3, "IS_PRIMARY"

    invoke-virtual {v0, v3, v2}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->expectedSeqIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->cameraData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v3, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->expectedShots:I

    if-ne p1, v3, :cond_7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->stopListening$1()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v4}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->getCollageEditorIntent(Ljava/util/List;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x20000

    invoke-static {v3, v4, v5}, Lkotlin/jvm/JvmClassMappingKt;->resolveActivityCompat(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v2

    :goto_2
    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->getCollageEditorIntent(Ljava/util/List;)Landroid/content/Intent;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/16 v3, 0x13

    invoke-direct {p1, p0, v3, v2, v1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-interface {v0, p1}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1$onSaveComplete$1;-><init>(Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v1, v2, v3, p0}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p0

    sget-object p1, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$25:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    :cond_7
    :goto_4
    return-void

    :goto_5
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->expectedSlowMotionFileName:Ljava/lang/String;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionData:Lcom/motorola/camera/CameraData;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->trySlowMotionReady(I)V

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->$r8$classId:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->expectedSeqIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;->stopListening$1()V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->COLLAGE_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1
    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->expectedSlowMotionFileName:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->Companion:Lkotlin/UByte$Companion;

    invoke-virtual {p1}, Lkotlin/UByte$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSaveError"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionError:Z

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
