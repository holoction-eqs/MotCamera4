.class public final Lcom/google/android/gms/common/moduleinstall/internal/zar;
.super Lcom/google/android/gms/common/moduleinstall/internal/zaa;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zar;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/gms/common/moduleinstall/internal/zar;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/common/moduleinstall/internal/zaa;-><init>()V

    return-void
.end method


# virtual methods
.method public final zad(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zar;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zar;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, p2, p0}, Landroidx/room/util/DBUtil;->trySetResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final zae(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zar;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/moduleinstall/internal/zaa;->zae(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zar;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, p2, p0}, Landroidx/room/util/DBUtil;->trySetResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
