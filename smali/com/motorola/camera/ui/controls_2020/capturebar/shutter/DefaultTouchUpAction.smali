.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/DefaultTouchUpAction;
.super Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;
.source "SourceFile"


# virtual methods
.method public final execute(JJJILcom/motorola/camera/EventListener;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p8, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p8, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
