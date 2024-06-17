.class public final Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public volatile mLastIsAvailable:Z

.field public mLastTime:J

.field public final mPointsFlow:Ljava/util/LinkedList;

.field public mShowingPoint:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;


# direct methods
.method public static -$$Nest$maddPoints(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;[Landroid/graphics/Point;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    aget-object v5, p1, v3

    if-eqz v4, :cond_1

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x14

    if-ge v6, v7, :cond_1

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v7, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v2

    :goto_2
    if-nez v4, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v1

    rem-int/2addr v3, v4

    aget-object v4, p1, v3

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    aget-object v5, p1, v3

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, p1, v3

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v5

    invoke-virtual {v3, v6, v0}, Landroid/graphics/Point;->set(II)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->-$$Nest$mcheckSmartScale(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static -$$Nest$mresendDelayMessage(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;ZZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    invoke-virtual {v2}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getShowingPoints()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    move p2, v0

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_0
    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f12016a

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const/16 v3, 0xfa0

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->duration(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const-string p2, "ANALYTICS_DOC_SCAN_TOAST"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V
    .locals 2

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastIsAvailable:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastTime:J

    new-instance p1, Landroid/os/Handler;

    new-instance v0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final getPoints()Ljava/util/ArrayList;
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move v7, v3

    :goto_2
    if-ge v7, v5, :cond_2

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    iget v10, v9, Landroid/graphics/Point;->x:I

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v10, v9}, Landroid/graphics/Point;->offset(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v3, v5, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    div-int/2addr v6, v1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Point;->set(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mShowingPoint:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastTime:J

    return-object v2
.end method

.method public final isAvailable()Z
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mPointsFlow:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastIsAvailable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastIsAvailable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mHandler:Landroid/os/Handler;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0xfa0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->mLastIsAvailable:Z

    return v2
.end method
