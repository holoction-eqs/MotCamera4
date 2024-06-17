.class public final Lcom/google/android/gms/common/api/internal/zabu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;


# instance fields
.field public zaa:Ljava/lang/Object;

.field public zab:Ljava/lang/Object;

.field public zac:Ljava/lang/Object;

.field public zad:Ljava/lang/Object;

.field public zae:Ljava/lang/Object;

.field public zaf:Z


# direct methods
.method public static synthetic $$$reportNull$$$0(I)V
    .locals 10

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v5, 0x2

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v9, "returnType"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_0
    aput-object v7, v6, v8

    goto :goto_2

    :pswitch_1
    const-string v9, "signatureErrors"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_2
    const-string v9, "typeParameters"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_3
    const-string v9, "valueParameters"

    aput-object v9, v6, v8

    :goto_2
    const/4 v8, 0x1

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v7, v6, v8

    goto :goto_3

    :cond_2
    const-string v7, "getErrors"

    aput-object v7, v6, v8

    goto :goto_3

    :cond_3
    const-string v7, "getTypeParameters"

    aput-object v7, v6, v8

    goto :goto_3

    :cond_4
    const-string v7, "getValueParameters"

    aput-object v7, v6, v8

    goto :goto_3

    :cond_5
    const-string v7, "getReturnType"

    aput-object v7, v6, v8

    :goto_3
    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    const-string v7, "<init>"

    aput-object v7, v6, v5

    :cond_6
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/internal/GmsClient;Lcom/google/android/gms/common/api/internal/ApiKey;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final build()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 1

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    return-object v0
.end method

.method public final doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    return-void
.end method

.method public final doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    return-void
.end method

.method public final event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    return-void
.end method

.method public final fireChangeEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    return-void
.end method

.method public final guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    return-void
.end method

.method public final onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    new-instance v1, Landroidx/work/Worker$2;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0, p1}, Landroidx/work/Worker$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final to(Lcom/motorola/camera/fsm/camera/StateKey;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    return-void
.end method

.method public final zae(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zabq;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    invoke-static {v0}, Landroidx/room/util/DBUtil;->checkHandlerThread(Lcom/google/android/gms/internal/base/zau;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSignInFailed for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zabq;->zar(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method
