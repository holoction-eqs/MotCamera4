.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;


# instance fields
.field public final zza:Lcom/google/firebase/components/Lazy;

.field public final zzb:Lcom/google/firebase/components/Lazy;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrt;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqz;

    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/cct/CCTDestination;)Landroidx/core/view/MenuHostHelper;

    move-result-object p1

    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    new-instance v0, Lcom/google/android/datatransport/Encoding;

    const-string v1, "json"

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzps;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_common/zzps;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrt;->zza:Lcom/google/firebase/components/Lazy;

    :cond_0
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzps;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_common/zzps;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrt;->zzb:Lcom/google/firebase/components/Lazy;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqz;Lcom/adobe/xmp/impl/ByteBuffer;)Lcom/google/android/datatransport/AutoValue_Event;
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqz;->zzc:I

    iget v0, p1, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    invoke-virtual {p1, p0}, Lcom/adobe/xmp/impl/ByteBuffer;->zze(I)[B

    move-result-object p0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/datatransport/AutoValue_Event;

    sget-object v0, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    invoke-direct {p1, p0, v0}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/datatransport/AutoValue_Event;

    sget-object v0, Lcom/google/android/datatransport/Priority;->VERY_LOW:Lcom/google/android/datatransport/Priority;

    invoke-direct {p1, p0, v0}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/adobe/xmp/impl/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrt;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqz;

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqz;->zzc:I

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrt;->zza:Lcom/google/firebase/components/Lazy;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrt;->zzb:Lcom/google/firebase/components/Lazy;

    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/TransportImpl;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrt;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqz;Lcom/adobe/xmp/impl/ByteBuffer;)Lcom/google/android/datatransport/AutoValue_Event;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/TransportImpl;->send(Lcom/google/android/datatransport/AutoValue_Event;)V

    :cond_1
    return-void
.end method
