.class public final Lcom/google/android/gms/internal/mlkit_common/zzay;
.super Lcom/google/android/gms/internal/mlkit_common/zzar;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_common/zzaz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzaz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzay;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzar;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzay;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaz;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzaz;->zzc:I

    invoke-static {p1, v0}, Lkotlin/collections/ArraysUtilJVM;->zza(II)V

    add-int/2addr p1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzaz;->zzb:[Ljava/lang/Object;

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p1, v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzay;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaz;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzaz;->zzc:I

    return p0
.end method
