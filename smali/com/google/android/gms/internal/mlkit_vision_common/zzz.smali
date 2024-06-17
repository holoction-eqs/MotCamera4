.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzz;
.super Lcom/google/android/gms/internal/mlkit_common/zzau;
.source "SourceFile"


# instance fields
.field public final transient zzb:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzau;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    :goto_0
    move-object p0, v0

    :goto_1
    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public final size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_common/zzy;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    invoke-direct {v0, v1, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;-><init>(II[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_common/zzw;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzw;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzau;[Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_common/zzx;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;-><init>(II[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzau;Lcom/google/android/gms/internal/mlkit_vision_common/zzy;)V

    return-object v1
.end method
