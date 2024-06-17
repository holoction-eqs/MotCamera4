.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicClickAction;
.super Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;
.source "SourceFile"


# virtual methods
.method public final execute(JJJILcom/motorola/camera/EventListener;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p8, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p8}, Lkotlin/UShort$Companion;->getCaptureEvent(JJJILcom/motorola/camera/EventListener;)Lcom/motorola/camera/fsm/camera/Trigger;

    move-result-object p0

    invoke-interface {p8, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
