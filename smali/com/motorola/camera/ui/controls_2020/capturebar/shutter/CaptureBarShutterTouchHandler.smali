.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final actionMap:Ljava/util/Map;

.field public final am:Landroid/view/accessibility/AccessibilityManager;

.field public downCount:I

.field public downDuration:J

.field public downEvent:Landroid/view/MotionEvent;

.field public final eventListener:Lcom/motorola/camera/EventListener;

.field public firstDownTime:J

.field public longClickable:Z

.field public longExposureStart:J

.field public longPress:Z

.field public final longPressTimeout:J

.field public shouldTriggerShutterCancel:Z

.field public final shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

.field public triggerShutterCancelRunnable:Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

.field public unsetPhotoStateRunnable:Landroidx/work/Worker$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;Lcom/motorola/camera/EventListener;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->am:Landroid/view/accessibility/AccessibilityManager;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_DOWN:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultTouchDownAction;

    invoke-direct {v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultTouchDownAction;-><init>()V

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_UP:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultTouchUpAction;

    invoke-direct {v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultTouchUpAction;-><init>()V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CLICK:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultClickAction;

    invoke-direct {v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultClickAction;-><init>()V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->LONG_PRESS_START:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/PhotoLongPressStartAction;

    invoke-direct {v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/PhotoLongPressStartAction;-><init>()V

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v4, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v11, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->LONG_PRESS_END:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressEndAction;

    invoke-direct {v8}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressEndAction;-><init>()V

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v11, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v8, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CANCEL:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    new-instance v12, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterCancelAction;

    invoke-direct {v12}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterCancelAction;-><init>()V

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v8, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v9

    move-object v9, v10

    move-object v10, v13

    filled-new-array/range {v5 .. v10}, [Lkotlin/Pair;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_DISABLED:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultClickAction;

    invoke-direct {v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultClickAction;-><init>()V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ljms/IJobMgrService$_Parcel;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_CAPTURING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressEndAction;

    invoke-direct {v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressEndAction;-><init>()V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ljms/IJobMgrService$_Parcel;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_IDLE:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    invoke-direct {v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>()V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Ljms/IJobMgrService$_Parcel;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->VIDEO_RECORDING:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/VideoRecordingClickAction;

    invoke-direct {v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/VideoRecordingClickAction;-><init>()V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressEndAction;

    invoke-direct {v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressEndAction;-><init>()V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v6, v7}, [Lkotlin/Pair;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->TIMER:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/TimerClickAction;

    invoke-direct {v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/TimerClickAction;-><init>()V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7}, Ljms/IJobMgrService$_Parcel;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->CINEMAGRAPH:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;

    invoke-direct {v5}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;-><init>()V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressStartAction;

    invoke-direct {v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressStartAction;-><init>()V

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v8, v5}, [Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v4

    filled-new-array/range {v12 .. v18}, [Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPressTimeout:J

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->setOnCancelPendingInputEventsListener(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$OnCancelPendingInputEventsListener;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->triggerShutterCancelRunnable:Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->am:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_4

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_DOWN:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v11, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v12, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v4 .. v12}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-wide v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xc8

    cmp-long v0, v3, v5

    if-lez v0, :cond_7

    :cond_6
    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_7

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CLICK:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v10, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v11, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v3 .. v11}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_7
    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_8

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_UP:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v8, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v9, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v1 .. v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 12

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->triggerShutterCancelRunnable:Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longClickable:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_DISABLED:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    if-ne v2, v4, :cond_3

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->setShutterState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_4

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->LONG_PRESS_START:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v10, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v11, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v3 .. v11}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_4
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    :cond_5
    return v1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x2

    iget-object v9, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    if-eqz v4, :cond_1c

    sget-object v10, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->LONG_PRESS_END:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    const/4 v11, 0x0

    if-eq v4, v6, :cond_17

    const/4 v12, 0x0

    if-eq v4, v8, :cond_11

    const/4 v13, 0x3

    if-eq v4, v13, :cond_f

    if-eq v4, v7, :cond_1c

    const/4 v2, 0x6

    if-eq v4, v2, :cond_1

    goto/16 :goto_10

    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v11

    :goto_0
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->triggerShutterCancelRunnable:Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    if-eqz v4, :cond_3

    invoke-virtual {v9, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    iput-object v11, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    if-nez v2, :cond_4

    return v3

    :cond_4
    iget-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    cmpl-float v8, v4, v12

    if-lez v8, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v4, v4, v8

    if-gez v4, :cond_6

    cmpl-float v4, v7, v12

    if-lez v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v7, v1

    if-gez v1, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    move v6, v3

    :goto_2
    if-eqz v6, :cond_8

    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_7

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v11, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v12, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v4 .. v12}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_7
    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    :cond_8
    return v3

    :cond_9
    iget-wide v7, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    const-wide/16 v10, 0x0

    cmp-long v4, v7, v10

    if-eqz v4, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v10, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    sub-long/2addr v7, v10

    const-wide/16 v10, 0xc8

    cmp-long v4, v7, v10

    if-lez v4, :cond_c

    :cond_a
    invoke-virtual {v9}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v9, v6}, Landroid/view/View;->setPressed(Z)V

    :cond_b
    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_c

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CLICK:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-eqz v10, :cond_c

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v11

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    iget-wide v6, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v8, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-wide v15, v6

    move/from16 v17, v4

    move-object/from16 v18, v8

    invoke-virtual/range {v10 .. v18}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_c
    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_d

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_UP:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-eqz v10, :cond_d

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v11

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    iget-wide v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v6, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v7, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-wide v15, v4

    move/from16 v17, v6

    move-object/from16 v18, v7

    invoke-virtual/range {v10 .. v18}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_d
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {v9}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2c

    if-eqz v1, :cond_2c

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->unsetPhotoStateRunnable:Landroidx/work/Worker$1;

    if-nez v0, :cond_e

    new-instance v0, Landroidx/work/Worker$1;

    invoke-direct {v0, v9}, Landroidx/work/Worker$1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;)V

    :cond_e
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_10

    :cond_f
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-eqz v1, :cond_10

    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_10

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-eqz v12, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move/from16 v19, v1

    move-object/from16 v20, v2

    invoke-virtual/range {v12 .. v20}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_10
    iput-object v11, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    goto/16 :goto_10

    :cond_11
    iget-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shouldTriggerShutterCancel:Z

    if-nez v4, :cond_16

    iget-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-nez v4, :cond_15

    if-nez v1, :cond_12

    goto :goto_3

    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v4, v4, v12

    if-ltz v4, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpg-float v4, v4, v12

    if-ltz v4, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_13

    goto :goto_4

    :cond_13
    :goto_3
    move v1, v3

    goto :goto_5

    :cond_14
    :goto_4
    move v1, v6

    :goto_5
    if-eqz v1, :cond_15

    goto :goto_6

    :cond_15
    move v6, v3

    :cond_16
    :goto_6
    iput-boolean v6, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shouldTriggerShutterCancel:Z

    goto/16 :goto_10

    :cond_17
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-eqz v1, :cond_18

    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1b

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-eqz v4, :cond_1b

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v11, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v12, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v4 .. v12}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    goto :goto_7

    :cond_18
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shouldTriggerShutterCancel:Z

    if-eqz v1, :cond_1b

    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_19

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CANCEL:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-eqz v12, :cond_19

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    iget-wide v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move-wide/from16 v17, v1

    move/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v12 .. v20}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_19
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->triggerShutterCancelRunnable:Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    if-eqz v1, :cond_1a

    invoke-virtual {v9, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1a
    iput-object v11, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    :cond_1b
    :goto_7
    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shouldTriggerShutterCancel:Z

    goto/16 :goto_10

    :cond_1c
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_1d

    return v3

    :cond_1d
    iget-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    if-eqz v4, :cond_1e

    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    return v3

    :cond_1e
    iget v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    if-ne v4, v6, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->firstDownTime:J

    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->firstDownTime:J

    sub-long/2addr v10, v12

    iput-wide v10, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->triggerShutterCancelRunnable:Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    if-eqz v4, :cond_20

    invoke-virtual {v9, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_20
    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_21

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->TOUCH_DOWN:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-eqz v10, :cond_21

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    iget-wide v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v15, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v6, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    move/from16 v17, v15

    move-wide v15, v4

    move-object/from16 v18, v6

    invoke-virtual/range {v10 .. v18}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v4

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_22

    const/4 v5, 0x1

    goto :goto_8

    :cond_22
    move v5, v3

    :goto_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostProcSupported()Z

    move-result v6

    if-eqz v6, :cond_24

    if-eqz v4, :cond_23

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LL_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    goto :goto_9

    :cond_23
    move v4, v3

    :cond_24
    :goto_9
    if-nez v4, :cond_2a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v4

    if-eqz v4, :cond_25

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_a

    :cond_25
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v4

    :goto_a
    invoke-virtual {v4}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNightMode()Z

    move-result v6

    if-nez v6, :cond_27

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSlowCaptureMode()Z

    move-result v6

    if-nez v6, :cond_27

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v6

    invoke-static {v4, v6}, Lcom/motorola/camera/IqConfigManager;->isAutoSlowCapture(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Z

    move-result v6

    if-nez v6, :cond_27

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMultiframeBokeh(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Z

    move-result v4

    if-nez v4, :cond_27

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_b

    :cond_26
    move v4, v3

    goto :goto_c

    :cond_27
    :goto_b
    const/4 v4, 0x1

    :goto_c
    if-nez v4, :cond_2a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result v4

    if-nez v4, :cond_2a

    if-nez v5, :cond_2a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanMode()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_28

    const/4 v4, 0x1

    goto :goto_d

    :cond_28
    move v4, v3

    :goto_d
    if-nez v4, :cond_2a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_e

    :cond_29
    move v6, v3

    goto :goto_f

    :cond_2a
    :goto_e
    const/4 v6, 0x1

    :goto_f
    if-nez v6, :cond_2b

    invoke-virtual {v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    if-ne v4, v5, :cond_2b

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eq v4, v7, :cond_2b

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_DISABLED:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    invoke-virtual {v9, v4}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->setShutterState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    :cond_2b
    new-instance v4, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/16 v5, 0x10

    invoke-direct {v4, v5, v0, v1, v2}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->triggerShutterCancelRunnable:Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    iget-wide v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPressTimeout:J

    int-to-long v5, v8

    mul-long/2addr v0, v5

    invoke-virtual {v9, v4, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2c
    :goto_10
    return v3
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4

    const-string v0, "changeEvent"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iput-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->firstDownTime:J

    iput-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    :cond_1
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowLongExposureProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longExposureStart:J

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v0, 0x1d

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
