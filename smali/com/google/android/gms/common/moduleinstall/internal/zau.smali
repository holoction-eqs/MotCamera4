.class public final Lcom/google/android/gms/common/moduleinstall/internal/zau;
.super Lcom/google/android/gms/common/moduleinstall/internal/zaa;
.source "SourceFile"


# instance fields
.field public final synthetic zaa:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic zab:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/service/zao;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zau;->zaa:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/common/moduleinstall/internal/zau;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/common/moduleinstall/internal/zaa;-><init>()V

    return-void
.end method


# virtual methods
.method public final zad(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zau;->zaa:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zau;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Landroidx/room/util/DBUtil;->trySetResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget p0, p1, Lcom/google/android/gms/common/api/Status;->zzc:I

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    if-eqz p2, :cond_2

    iget-boolean p0, p2, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;->zab:Z

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    const-string p0, "Listener must not be null"

    invoke-static {v0, p0}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method
