.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zza:Ljava/nio/charset/Charset;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-interface {p2, v0, p0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method
