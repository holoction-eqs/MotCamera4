.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient zza:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzat;->zza:Ljava/util/Map;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
