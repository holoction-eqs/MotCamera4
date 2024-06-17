.class public final Lcom/google/mlkit/common/sdkinternal/MlKitContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/lang/Object;

.field public static zzb:Lcom/google/mlkit/common/sdkinternal/MlKitContext;


# instance fields
.field public zzc:Lcom/google/firebase/components/ComponentRuntime;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zza:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;
    .locals 3

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MlKitContext has not been initialized"

    invoke-static {v2, v1}, Landroidx/room/util/DBUtil;->checkState(Ljava/lang/String;Z)V

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-static {v1}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "MlKitContext has been deleted"

    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->checkState(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzc:Lcom/google/firebase/components/ComponentRuntime;

    invoke-static {v0}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzc:Lcom/google/firebase/components/ComponentRuntime;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method
