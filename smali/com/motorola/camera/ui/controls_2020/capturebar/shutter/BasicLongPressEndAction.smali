.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/BasicLongPressEndAction;
.super Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;
.source "SourceFile"


# virtual methods
.method public final execute(JJJILcom/motorola/camera/EventListener;)V
    .locals 6

    const-string p0, "listener"

    invoke-static {p8, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lkotlin/UShort$Companion;->getCaptureLongPressEvent(ZJJLcom/motorola/camera/EventListener;)Lcom/motorola/camera/fsm/camera/Trigger;

    move-result-object p0

    invoke-interface {p8, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
