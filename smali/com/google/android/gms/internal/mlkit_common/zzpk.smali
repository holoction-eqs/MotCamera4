.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/zzpk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzpk;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzpk;->zza:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpk;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpk;->zza:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
