.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_common/zzmc;


# instance fields
.field public final zza:Lcom/google/firebase/components/Lazy;

.field public final zzb:Lcom/google/firebase/components/Lazy;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzma;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_common/zzma;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzma;

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

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_common/zzps;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->zza:Lcom/google/firebase/components/Lazy;

    :cond_0
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzps;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_common/zzps;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->zzb:Lcom/google/firebase/components/Lazy;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzma;Lcom/motorola/camera/CameraKpi;)Lcom/google/android/datatransport/AutoValue_Event;
    .locals 9

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzma;->zzc:I

    xor-int/lit8 v0, p0, 0x1

    iget-object v1, p1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzi:Ljava/lang/Object;

    iget-object v0, p1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzg:Ljava/lang/Object;

    iget-object v1, p1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzla;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzla;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzky;)V

    iput-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;->zza:Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroidx/work/InputMergerFactory$1;->zza$1()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    sget-object v0, Lcom/airbnb/lottie/parser/PathParser;->zza$1:Lcom/airbnb/lottie/parser/PathParser;

    if-nez p0, :cond_1

    :try_start_1
    iget-object p0, p1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzan;)V

    new-instance p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/parser/PathParser;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    iput-boolean v2, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    iget-object v5, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->objectEncoders:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->valueEncoders:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->fallbackEncoder:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;

    iget-boolean v8, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;-><init>(Ljava/io/StringWriter;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;Z)V

    invoke-virtual {v1, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    invoke-virtual {v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    iget-object p0, v1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "utf-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_2

    :cond_1
    iget-object p0, p1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzan;)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;-><init>()V

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/parser/PathParser;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->zzc:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->zzd:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzam;->zze:Lcom/google/android/gms/internal/mlkit_vision_common/zzal;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;

    invoke-direct {v3, v2, v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/ObjectEncoder;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, v3}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/google/gson/JsonParseException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "No encoder for "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_2
    new-instance p1, Lcom/google/android/datatransport/AutoValue_Event;

    sget-object v0, Lcom/google/android/datatransport/Priority;->VERY_LOW:Lcom/google/android/datatransport/Priority;

    invoke-direct {p1, p0, v0}, Lcom/google/android/datatransport/AutoValue_Event;-><init>(Ljava/lang/Object;Lcom/google/android/datatransport/Priority;)V

    return-object p1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    invoke-direct {p1, v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final zza(Lcom/motorola/camera/CameraKpi;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzma;

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzma;->zzc:I

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->zza:Lcom/google/firebase/components/Lazy;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->zzb:Lcom/google/firebase/components/Lazy;

    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/TransportImpl;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmp;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzma;Lcom/motorola/camera/CameraKpi;)Lcom/google/android/datatransport/AutoValue_Event;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/TransportImpl;->send(Lcom/google/android/datatransport/AutoValue_Event;)V

    :cond_1
    return-void
.end method
