.class public final enum Lcom/google/mlkit/common/sdkinternal/zzh;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum zza:Lcom/google/mlkit/common/sdkinternal/zzh;

.field public static final synthetic zzb:[Lcom/google/mlkit/common/sdkinternal/zzh;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zzh;

    invoke-direct {v0}, Lcom/google/mlkit/common/sdkinternal/zzh;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    filled-new-array {v0}, [Lcom/google/mlkit/common/sdkinternal/zzh;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/zzh;->zzb:[Lcom/google/mlkit/common/sdkinternal/zzh;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/mlkit/common/sdkinternal/zzh;
    .locals 1

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/zzh;->zzb:[Lcom/google/mlkit/common/sdkinternal/zzh;

    invoke-virtual {v0}, [Lcom/google/mlkit/common/sdkinternal/zzh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mlkit/common/sdkinternal/zzh;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zzc:Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
