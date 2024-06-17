.class public final Lcom/motorola/camera/HeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mEventListener:Lcom/motorola/camera/EventListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Controller;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/HeadsetReceiver;->mEventListener:Lcom/motorola/camera/EventListener;

    return-void
.end method

.method public static isUsbAudioDevice(Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "device"

    const-class v1, Landroid/hardware/usb/UsbDevice;

    invoke-static {p0, v0, v1}, Lcom/adobe/xmp/XMPUtils;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbDevice;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7e02a835

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v0, v1, :cond_5

    const v1, -0x63ecb970

    if-eq v0, v1, :cond_3

    const v1, -0x5fdc9a67

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_1

    :cond_3
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move p1, v3

    goto :goto_1

    :cond_5
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_0
    move p1, v5

    goto :goto_1

    :cond_6
    move p1, v4

    :goto_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->PLUG:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->UNPLUG:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    const-wide/16 v6, 0x3e8

    const/16 v8, 0x16

    if-eqz p1, :cond_b

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p2}, Lcom/motorola/camera/HeadsetReceiver;->isUsbAudioDevice(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance p2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    invoke-direct {p2, v8, p0, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p1, p2, v6, v7}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_8
    const-string p1, "state"

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "microphone"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v3, :cond_c

    if-eqz p1, :cond_9

    if-eq p1, v3, :cond_a

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HEADSET_PLUG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$HeadsetPlugStatus;

    invoke-direct {p1, p2, v0, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/HeadsetReceiver;->mEventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_3

    :cond_9
    move-object v0, v1

    :cond_a
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance p2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    invoke-direct {p2, v8, p0, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v6, v7}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_b
    invoke-static {p2}, Lcom/motorola/camera/HeadsetReceiver;->isUsbAudioDevice(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance p2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    invoke-direct {p2, v8, p0, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_c
    :goto_3
    return-void
.end method
