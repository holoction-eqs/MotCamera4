.class public Landroidx/work/impl/StartStopTokens;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lcom/google/android/play/core/appupdate/internal/zzaf;
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic $r8$classId:I

.field public lock:Ljava/lang/Object;

.field public final runs:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/work/impl/StartStopTokens;->$r8$classId:I

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4
    iput p1, p0, Landroidx/work/impl/StartStopTokens;->$r8$classId:I

    iput-object p2, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/work/impl/StartStopTokens;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;I)V
    .locals 0

    const/4 p2, 0x4

    iput p2, p0, Landroidx/work/impl/StartStopTokens;->$r8$classId:I

    .line 6
    invoke-direct {p0, p1}, Landroidx/work/impl/StartStopTokens;-><init>(Landroidx/media3/common/util/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/carousel/KeylineState$Keyline;Lcom/google/android/material/carousel/KeylineState$Keyline;)V
    .locals 2

    const/16 v0, 0x9

    iput v0, p0, Landroidx/work/impl/StartStopTokens;->$r8$classId:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    return-void

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V
    .locals 5

    const/4 v0, 0x1

    iput v0, p0, Landroidx/work/impl/StartStopTokens;->$r8$classId:I

    .line 9
    const-class v1, Landroidx/room/util/DBUtil;

    monitor-enter v1

    :try_start_0
    const-string v2, "common"

    int-to-byte v3, v0

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 10
    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/zzpa;

    invoke-direct {v3, v2, v0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzpa;-><init>(Ljava/lang/String;ZI)V

    .line 11
    const-class v0, Landroidx/room/util/DBUtil;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Landroidx/room/util/DBUtil;->zza:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/mlkit_common/zzpx;-><init>(I)V

    sput-object v2, Landroidx/room/util/DBUtil;->zza:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    :cond_0
    sget-object v2, Landroidx/room/util/DBUtil;->zza:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    invoke-virtual {v2, v3}, Landroidx/transition/ViewOverlayApi14;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_common/zzpn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    monitor-exit v1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    .line 14
    :try_start_3
    monitor-exit v0

    throw p0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 p1, v3, 0x1

    if-nez p1, :cond_2

    const-string p1, " enableFirelog"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 p1, v3, 0x2

    if-nez p1, :cond_3

    const-string p1, " firelogEventType"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing required properties:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V
    .locals 1

    .line 16
    const/16 v0, 0xd

    iput v0, p0, Landroidx/work/impl/StartStopTokens;->$r8$classId:I

    invoke-direct {p0, v0, p1, p2}, Landroidx/work/impl/StartStopTokens;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Landroidx/work/impl/StartStopTokens;->$r8$classId:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Comparable;I)V
    .locals 0

    .line 18
    iput p3, p0, Landroidx/work/impl/StartStopTokens;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/google/android/gms/common/internal/GmsClient;Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaz;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/internal/zar;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/common/moduleinstall/internal/zar;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/GmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    iget-object v1, p1, Lcom/google/android/gms/internal/base/zaa;->zab:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/base/zac;->zae(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/base/zac;->zad(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/base/zaa;->zac(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final add(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clear()V
    .locals 1

    iget v0, p0, Landroidx/work/impl/StartStopTokens;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :goto_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final construct()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/gson/JsonIOException;

    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final contains(Landroidx/work/impl/model/WorkGenerationalId;)Z
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final containsKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;

    check-cast p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;

    invoke-direct {v1, v0, p0}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;)V

    return-object v1
.end method

.method public final getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getInt(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getInt$1(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getLong(Ljava/lang/String;)J
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)V
    .locals 1

    iget-object p1, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast p1, Landroidx/preference/PreferenceGroup;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    iget-object p1, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p1, Landroidx/preference/PreferenceGroupAdapter;

    iget-object v0, p1, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/work/Worker$1;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onSeekFinished()V
    .locals 2

    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    return-void
.end method

.method public final onTypefaceResult(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V
    .locals 4

    iget v0, p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mResult:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, Lkotlin/DeepRecursiveFunction;

    check-cast v3, Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$7;

    iget-object p1, p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct {v2, v1, p0, v0, p1}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast p1, Lkotlin/DeepRecursiveFunction;

    check-cast v3, Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$9;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/motorola/camera/mcf/Mcf$9;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final putAll(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final putBoolean(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final putInt(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final putLong(JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 1

    .line 1
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/work/impl/StartStopToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final remove(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/impl/model/WorkGenerationalId;

    .line 2
    iget-object v4, v4, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    .line 3
    invoke-static {v4, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/model/WorkGenerationalId;

    iget-object v3, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, [B

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final searchForTimestamp(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/appcompat/app/TwilightCalculator;
    .locals 16

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    sub-long/2addr v1, v3

    const-wide/16 v5, 0x4e20

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v5, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-interface {v7, v6, v1, v5}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    const/4 v1, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move v7, v1

    move-wide v9, v5

    :goto_0
    iget v8, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v11, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v8, v11

    const/4 v12, 0x4

    if-lt v8, v12, :cond_e

    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v8, v11}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v8

    const/4 v11, 0x1

    const/16 v13, 0x1ba

    if-eq v8, v13, :cond_0

    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {v2}, Landroidx/media3/extractor/ts/PsDurationReader;->readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v14

    cmp-long v1, v14, v5

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v1, v14, v15}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v14

    cmp-long v1, v14, p2

    if-lez v1, :cond_2

    cmp-long v0, v9, v5

    if-nez v0, :cond_1

    new-instance v6, Landroidx/appcompat/app/TwilightCalculator;

    const/4 v5, -0x1

    move-object v0, v6

    move-wide v1, v14

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/app/TwilightCalculator;-><init>(JJI)V

    goto/16 :goto_5

    :cond_1
    int-to-long v0, v7

    goto :goto_1

    :cond_2
    const-wide/32 v7, 0x186a0

    add-long/2addr v7, v14

    cmp-long v1, v7, p2

    if-lez v1, :cond_3

    iget v0, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    int-to-long v0, v0

    :goto_1
    add-long/2addr v3, v0

    invoke-static {v3, v4}, Landroidx/appcompat/app/TwilightCalculator;->targetFoundResult(J)Landroidx/appcompat/app/TwilightCalculator;

    move-result-object v6

    goto/16 :goto_5

    :cond_3
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    move v7, v1

    move-wide v9, v14

    :cond_4
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v8, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int v8, v1, v8

    const/16 v14, 0xa

    if-ge v8, v14, :cond_5

    goto :goto_3

    :cond_5
    const/16 v8, 0x9

    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v15, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v14, v15

    if-ge v14, v8, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget v8, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v8, v14

    if-ge v8, v12, :cond_7

    goto :goto_3

    :cond_7
    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v8, v14}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v8

    const/16 v14, 0x1bb

    if-ne v8, v14, :cond_9

    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v15, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v14, v15

    if-ge v14, v8, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_9
    :goto_2
    iget v8, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v8, v14

    if-lt v8, v12, :cond_d

    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v8, v14}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->access$100([BI)I

    move-result v8

    if-eq v8, v13, :cond_d

    const/16 v14, 0x1b9

    if-ne v8, v14, :cond_a

    goto :goto_4

    :cond_a
    ushr-int/lit8 v8, v8, 0x8

    if-eq v8, v11, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget v8, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v8, v14

    const/4 v14, 0x2

    if-ge v8, v14, :cond_c

    :goto_3
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_4

    :cond_c
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v15, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v15, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    :cond_d
    :goto_4
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    goto/16 :goto_0

    :cond_e
    cmp-long v0, v9, v5

    if-eqz v0, :cond_f

    int-to-long v0, v1

    add-long v11, v3, v0

    new-instance v6, Landroidx/appcompat/app/TwilightCalculator;

    const/4 v13, -0x2

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Landroidx/appcompat/app/TwilightCalculator;-><init>(JJI)V

    goto :goto_5

    :cond_f
    sget-object v6, Landroidx/appcompat/app/TwilightCalculator;->NO_TIMESTAMP_IN_RANGE_RESULT:Landroidx/appcompat/app/TwilightCalculator;

    :goto_5
    return-object v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroidx/work/impl/StartStopTokens;->$r8$classId:I

    iget-object v1, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Synchronized"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p0, -0x1

    if-ge v2, v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public final tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroidx/work/impl/StartStopToken;

    invoke-direct {v1, p1}, Landroidx/work/impl/StartStopToken;-><init>(Landroidx/work/impl/model/WorkGenerationalId;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v1, Landroidx/work/impl/StartStopToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    check-cast v0, Lcom/google/android/play/core/appupdate/zzk;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzk;->zza:Lcom/google/android/play/core/appupdate/zzi;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzi;->zza:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    invoke-interface {p0}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Lcom/google/android/play/core/appupdate/zzr;

    check-cast p0, Lcom/google/android/play/core/appupdate/zzt;

    invoke-direct {v1, v0, p0}, Lcom/google/android/play/core/appupdate/zzr;-><init>(Landroid/content/Context;Lcom/google/android/play/core/appupdate/zzt;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
