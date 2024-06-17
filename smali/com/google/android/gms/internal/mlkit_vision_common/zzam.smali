.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/config/EncoderConfig;


# instance fields
.field public final zzc:Ljava/util/HashMap;

.field public final zzd:Ljava/util/HashMap;

.field public final zze:Lcom/google/android/gms/internal/mlkit_vision_common/zzal;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->zzc:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->zzd:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzal;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzal;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->zze:Lcom/google/android/gms/internal/mlkit_vision_common/zzal;

    return-void
.end method


# virtual methods
.method public final bridge synthetic registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->zzc:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->zzd:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
