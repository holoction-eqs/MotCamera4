.class public final Lcom/motorola/camera/mcf/Mcf$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$obj1:Ljava/lang/Object;

.field public final val$obj2:Ljava/lang/Object;

.field public final val$obj3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$7;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkQuery;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$7;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {p1}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/analytics/AnalyticsService$EventType;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 6
    const/16 v0, 0xc

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$7;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/mcf/Mcf$7;Landroidx/core/util/Consumer;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$7;->$r8$classId:I

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 8
    iput p4, p0, Lcom/motorola/camera/mcf/Mcf$7;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/mcf/Mcf$7;->$r8$classId:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    iget-object v7, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    iget-object v8, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    :try_start_0
    new-instance p0, Lcom/motorola/camera/analytics/CheckinEvent;

    check-cast v8, Lcom/motorola/camera/analytics/AnalyticsService$EventType;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v7, v1}, Lcom/motorola/camera/analytics/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    check-cast v6, Landroid/os/Bundle;

    invoke-static {v6}, Lcom/motorola/camera/analytics/AnalyticsService;->-$$Nest$smmapBundleToEntries(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/analytics/CheckInEntry;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/analytics/CheckInEntry;->setValue(Lcom/motorola/camera/analytics/CheckinEvent;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v1, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/analytics/CheckinEvent;->mInstance:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/motorola/camera/analytics/UnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    sget-object v1, Lcom/motorola/camera/analytics/CheckinEvent;->sPublishMtd:Ljava/lang/reflect/Method;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/motorola/camera/analytics/UnsupportedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0
    :try_end_2
    .catch Lcom/motorola/camera/analytics/UnsupportedException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_1
    return-void

    :pswitch_1
    check-cast v6, Lcom/google/android/material/badge/BadgeDrawable;

    check-cast v8, Landroid/view/View;

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8, v7}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void

    :pswitch_2
    check-cast v7, Landroid/view/View;

    if-eqz v7, :cond_3

    check-cast v6, Lcom/google/android/material/appbar/HeaderBehavior;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    return-void

    :pswitch_3
    check-cast v6, Lcom/google/android/gms/common/api/internal/zzd;

    iget p0, v6, Lcom/google/android/gms/common/api/internal/zzd;->zzc:I

    if-lez p0, :cond_5

    move-object p0, v8

    check-cast p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    iget-object v0, v6, Lcom/google/android/gms/common/api/internal/zzd;->zzd:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    :cond_4
    invoke-virtual {p0, v5}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onCreate(Landroid/os/Bundle;)V

    :cond_5
    iget p0, v6, Lcom/google/android/gms/common/api/internal/zzd;->zzc:I

    if-lt p0, v4, :cond_6

    move-object p0, v8

    check-cast p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStart()V

    :cond_6
    iget p0, v6, Lcom/google/android/gms/common/api/internal/zzd;->zzc:I

    if-lt p0, v3, :cond_7

    move-object p0, v8

    check-cast p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onResume()V

    :cond_7
    iget p0, v6, Lcom/google/android/gms/common/api/internal/zzd;->zzc:I

    if-lt p0, v2, :cond_8

    move-object p0, v8

    check-cast p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStop()V

    :cond_8
    iget p0, v6, Lcom/google/android/gms/common/api/internal/zzd;->zzc:I

    if-lt p0, v1, :cond_9

    check-cast v8, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    return-void

    :pswitch_4
    check-cast v6, Lcom/google/android/gms/common/api/internal/zzb;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_5
    :try_start_3
    check-cast v8, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast v7, Landroidx/arch/core/util/Function;

    invoke-interface {v7, p0}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, v6

    check-cast v0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, p0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    move-object p0, v0

    :goto_2
    check-cast v6, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v6, p0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_3
    return-void

    :pswitch_6
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$7;->run$androidx$work$impl$utils$StatusRunnable()V

    return-void

    :pswitch_7
    check-cast v8, Landroidx/work/impl/WorkManagerImpl;

    iget-object p0, v8, Landroidx/work/impl/WorkManagerImpl;->mProcessor:Landroidx/work/impl/Processor;

    check-cast v7, Landroidx/work/impl/StartStopToken;

    check-cast v6, Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0, v7, v6}, Landroidx/work/impl/Processor;->startWork(Landroidx/work/impl/StartStopToken;Landroidx/core/view/MenuHostHelper;)Z

    return-void

    :pswitch_8
    :try_start_4
    check-cast v6, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    const/4 p0, 0x1

    :goto_4
    check-cast v8, Landroidx/work/impl/ExecutionListener;

    check-cast v7, Landroidx/work/impl/model/WorkGenerationalId;

    invoke-interface {v8, v7, p0}, Landroidx/work/impl/ExecutionListener;->onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    return-void

    :pswitch_9
    :try_start_5
    check-cast v8, Ljava/util/concurrent/Callable;

    invoke-interface {v8}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    check-cast v7, Landroidx/core/util/Consumer;

    check-cast v6, Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$7;

    invoke-direct {v0, p0, v7, v5}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(Lcom/motorola/camera/mcf/Mcf$7;Landroidx/core/util/Consumer;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_a
    check-cast v7, Landroidx/core/util/Consumer;

    invoke-interface {v7, v8}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_b
    check-cast v8, Lkotlin/DeepRecursiveFunction;

    check-cast v7, Landroid/graphics/Typeface;

    iget-object p0, v8, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, L_COROUTINE/_BOUNDARY;

    if-eqz p0, :cond_b

    invoke-virtual {p0, v7}, L_COROUTINE/_BOUNDARY;->onFontRetrieved(Landroid/graphics/Typeface;)V

    :cond_b
    return-void

    :pswitch_c
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmFullFrameListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    if-eqz p0, :cond_c

    :try_start_6
    check-cast v8, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    check-cast v7, Ljava/lang/String;

    check-cast v6, Lcom/motorola/camera/shared/PostProcTransferData;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    invoke-virtual {p0, v8, v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->onTransferToJMS(Lcom/motorola/camera/mcf/McfInstanceIdentifier;Ljava/lang/String;Lcom/motorola/camera/shared/PostProcTransferData;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postFullFrameEventFromNative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_5
    return-void

    :goto_6
    check-cast v6, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    const/4 p0, -0x1

    iput p0, v6, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    check-cast v7, Landroidx/emoji2/text/EmojiCompat$InitCallback;

    invoke-virtual {v6, v8, v7}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachToPager(Ljava/lang/Object;Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run$androidx$work$impl$utils$StatusRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj1:Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$7;->runInternal$1()Ljava/util/List;

    move-result-object p0

    move-object v1, v0

    check-cast v1, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1, p0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    check-cast v0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, p0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public final runInternal$1()Ljava/util/List;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj2:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkManagerImpl;

    iget-object v1, v1, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->rawWorkInfoDao()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$7;->val$obj3:Ljava/lang/Object;

    check-cast v0, Landroidx/work/WorkQuery;

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT * FROM workspec"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    const-string v5, "states"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    const-string v7, ")"

    const/16 v8, 0xa

    const-string v9, " AND"

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/work/WorkInfo$State;

    invoke-static {v10}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v10}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v4, " WHERE state IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4, v3}, Landroidx/tracing/Trace;->bindings(ILjava/lang/StringBuilder;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v4, v9

    goto :goto_1

    :cond_1
    const-string v4, " WHERE"

    :goto_1
    iget-object v5, v0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    const-string v10, "ids"

    invoke-static {v5, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v5

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v6

    if-eqz v10, :cond_3

    move-object v10, v5

    check-cast v10, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v10, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/UUID;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v8, " id IN ("

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, v3}, Landroidx/tracing/Trace;->bindings(ILjava/lang/StringBuilder;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v4, v9

    :cond_3
    iget-object v5, v0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    const-string v7, "tags"

    invoke-static {v5, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v6

    const-string v10, "))"

    if-eqz v8, :cond_4

    const-string v8, " id IN (SELECT work_spec_id FROM worktag WHERE tag IN ("

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, v3}, Landroidx/tracing/Trace;->bindings(ILjava/lang/StringBuilder;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_4
    move-object v9, v4

    :goto_3
    iget-object v0, v0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const-string v4, "uniqueWorkNames"

    invoke-static {v0, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v6

    if-eqz v5, :cond_5

    const-string v5, " id IN (SELECT work_spec_id FROM workname WHERE name IN ("

    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v3}, Landroidx/tracing/Trace;->bindings(ILjava/lang/StringBuilder;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "builder.toString()"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast v2, Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, v1, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast v2, Landroidx/room/RoomDatabase;

    invoke-static {v2, v0, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, L_COROUTINE/_BOUNDARY;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "state"

    invoke-static {v2, v3}, L_COROUTINE/_BOUNDARY;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v5, "output"

    invoke-static {v2, v5}, L_COROUTINE/_BOUNDARY;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "run_attempt_count"

    invoke-static {v2, v6}, L_COROUTINE/_BOUNDARY;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "generation"

    invoke-static {v2, v7}, L_COROUTINE/_BOUNDARY;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    new-instance v8, Landroidx/collection/ArrayMap;

    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v9, Landroidx/collection/ArrayMap;

    invoke-direct {v9}, Landroidx/collection/ArrayMap;-><init>()V

    :cond_6
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v11}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_7

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v10, v12}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v11}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-nez v11, :cond_6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v10, v11}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    const/4 v10, -0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-virtual {v1, v8}, Lcom/adobe/xmp/impl/xpath/XMPPath;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    invoke-virtual {v1, v9}, Lcom/adobe/xmp/impl/xpath/XMPPath;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_12

    if-ne v0, v10, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_a

    :goto_6
    move-object v14, v11

    goto :goto_7

    :cond_a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v14, v12

    :goto_7
    if-ne v3, v10, :cond_b

    move-object v15, v11

    goto :goto_8

    :cond_b
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v12

    move-object v15, v12

    :goto_8
    if-ne v5, v10, :cond_c

    move-object/from16 v16, v11

    goto :goto_a

    :cond_c
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_d

    move-object v12, v11

    goto :goto_9

    :cond_d
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    :goto_9
    invoke-static {v12}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v12

    move-object/from16 v16, v12

    :goto_a
    if-ne v6, v10, :cond_e

    move/from16 v17, v4

    goto :goto_b

    :cond_e
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v17, v12

    :goto_b
    if-ne v7, v10, :cond_f

    move/from16 v18, v4

    goto :goto_c

    :cond_f
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v18, v12

    :goto_c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12, v11}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_10

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_10
    move-object/from16 v19, v12

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12, v11}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_11
    move-object/from16 v20, v12

    new-instance v12, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object v13, v12

    invoke-direct/range {v13 .. v20}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_12
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    sget-object v0, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method
