.class public final Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/google/android/gms/dynamite/zzo;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final connectionContext:Landroid/content/Context;

.field public handlerThread:Landroid/os/HandlerThread;

.field public isBound:Z

.field public final listener:Lcom/google/common/base/Joiner;

.field public messenger:Landroid/os/Messenger;

.field public final responseHandler:Landroid/os/Handler;

.field public service:Landroid/os/Messenger;

.field public final serviceComponentInfo:Landroid/content/ComponentName;

.field public final serviceConnection:Lcom/google/android/play/core/appupdate/internal/zzw;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/dynamite/zzo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/dynamite/zzo;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->Companion:Lcom/google/android/gms/dynamite/zzo;

    const-class v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/Handler;Lcom/google/common/base/Joiner;)V
    .locals 1

    const-string v0, "responseCallback"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->connectionContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->responseHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->serviceComponentInfo:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->listener:Lcom/google/common/base/Joiner;

    new-instance p3, Lcom/google/android/play/core/appupdate/internal/zzw;

    const/4 p4, 0x3

    invoke-direct {p3, p0, p4}, Lcom/google/android/play/core/appupdate/internal/zzw;-><init>(Ljava/lang/Object;I)V

    iput-object p3, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->serviceConnection:Lcom/google/android/play/core/appupdate/internal/zzw;

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p3, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public final processJob(Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->isBound:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->service:Landroid/os/Messenger;

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->messenger:Landroid/os/Messenger;

    iput-object p1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->service:Landroid/os/Messenger;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_1
    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    :goto_1
    move v4, v2

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "task_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/common/TaskId;

    if-eqz p1, :cond_3

    iget-wide v0, p1, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_3
    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string p1, "EMPTY"

    invoke-static {v8, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;-><init>(ILcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;JLandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->responseHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
