.class public final Lcom/motorola/camera/detector/results/tidbit/actions/WiFiAction;
.super Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->WIFI:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/motorola/camera/EventListener;)V
    .locals 3

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ALWAYS_AWARE_CONNECT_WIFI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p1, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
