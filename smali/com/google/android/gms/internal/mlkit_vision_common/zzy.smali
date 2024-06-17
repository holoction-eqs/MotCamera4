.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzy;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzp;
.source "SourceFile"


# instance fields
.field public final transient zza:[Ljava/lang/Object;

.field public final transient zzb:I

.field public final transient zzc:I


# direct methods
.method public constructor <init>(II[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;->zza:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;->zzb:I

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;->zzc:I

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->zza(II)V

    add-int/2addr p1, p1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;->zzb:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;->zza:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzy;->zzc:I

    return p0
.end method
