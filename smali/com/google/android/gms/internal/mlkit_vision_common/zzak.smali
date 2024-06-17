.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoderContext;


# static fields
.field public static final zza:Ljava/nio/charset/Charset;

.field public static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;


# instance fields
.field public zze:Ljava/io/OutputStream;

.field public final zzf:Ljava/util/Map;

.field public final zzg:Ljava/util/Map;

.field public final zzh:Lcom/google/firebase/encoders/ObjectEncoder;

.field public final zzi:Lcom/google/android/gms/internal/mlkit_vision_common/zzao;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zza:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/adobe/xmp/impl/ParseState;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    const/4 v2, 0x1

    iput v2, v0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzad;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzai;

    invoke-static {v2, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzad;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "key"

    invoke-direct {v3, v4, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    new-instance v0, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    const/4 v1, 0x2

    iput v1, v0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzad;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzad;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "value"

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;

    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayOutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;-><init>(Lcom/google/firebase/encoders/ObjectEncoderContext;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzi:Lcom/google/android/gms/internal/mlkit_vision_common/zzao;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzf:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzg:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzh:Lcom/google/firebase/encoders/ObjectEncoder;

    return-void
.end method

.method public static zzh(Lcom/google/firebase/encoders/FieldDescriptor;)I
    .locals 1

    iget-object p0, p0, Lcom/google/firebase/encoders/FieldDescriptor;->properties:Ljava/util/Map;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzai;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzai;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zza:I

    return p0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)V

    return-object p0
.end method

.method public final zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzh(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_2
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p3, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzd:Lcom/google/android/gms/internal/mlkit_vision_common/zzaj;

    invoke-virtual {p0, v0, p1, p3, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzk$1(Lcom/google/firebase/encoders/ObjectEncoder;Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    if-eqz p3, :cond_7

    const-wide/16 p2, 0x0

    cmpl-double p2, v0, p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzh(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;

    const/16 p1, 0x8

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_2
    return-void

    :cond_8
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_a

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz p3, :cond_9

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzh(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    return-void

    :cond_a
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze$1(Lcom/google/firebase/encoders/FieldDescriptor;JZ)V

    return-void

    :cond_b
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzd$1(Lcom/google/firebase/encoders/FieldDescriptor;IZ)V

    return-void

    :cond_c
    instance-of v0, p2, [B

    if-eqz v0, :cond_e

    check-cast p2, [B

    if-eqz p3, :cond_d

    array-length p3, p2

    if-nez p3, :cond_d

    return-void

    :cond_d
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzh(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    array-length p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzf:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/ObjectEncoder;

    if-eqz v0, :cond_f

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzk$1(Lcom/google/firebase/encoders/ObjectEncoder;Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)V

    return-void

    :cond_f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzg:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/ValueEncoder;

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzi:Lcom/google/android/gms/internal/mlkit_vision_common/zzao;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb:Z

    goto :goto_5

    :goto_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb:Z

    :goto_5
    invoke-interface {v0, p2, p0}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_10
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzag;

    if-eqz v0, :cond_11

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzag;

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzag;->zza()I

    move-result p2

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzd$1(Lcom/google/firebase/encoders/FieldDescriptor;IZ)V

    return-void

    :cond_11
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_12

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzd$1(Lcom/google/firebase/encoders/FieldDescriptor;IZ)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzh:Lcom/google/firebase/encoders/ObjectEncoder;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzk$1(Lcom/google/firebase/encoders/ObjectEncoder;Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd$1(Lcom/google/firebase/encoders/FieldDescriptor;IZ)V
    .locals 1

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/google/firebase/encoders/FieldDescriptor;->properties:Ljava/util/Map;

    const-class p3, Lcom/google/android/gms/internal/mlkit_vision_common/zzai;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzai;

    if-eqz p1, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;

    iget-object p3, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zza:I

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    goto :goto_1

    :cond_2
    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_3
    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    add-int p1, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    goto :goto_1

    :cond_4
    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    :goto_1
    return-void

    :cond_5
    new-instance p0, Lcom/google/gson/JsonParseException;

    const-string p1, "Field has no @Protobuf config"

    invoke-direct {p0, p1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zze$1(Lcom/google/firebase/encoders/FieldDescriptor;JZ)V
    .locals 2

    if-eqz p4, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/google/firebase/encoders/FieldDescriptor;->properties:Ljava/util/Map;

    const-class p4, Lcom/google/android/gms/internal/mlkit_vision_common/zzai;

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzai;

    if-eqz p1, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;

    iget-object p4, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzad;->zza:I

    if-eqz p4, :cond_4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_3

    const/4 v1, 0x2

    if-eq p4, v1, :cond_2

    goto :goto_1

    :cond_2
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;

    const/16 p1, 0x8

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_3
    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    add-long v0, p2, p2

    const/16 p1, 0x3f

    shr-long p1, p2, p1

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzo(J)V

    goto :goto_1

    :cond_4
    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzo(J)V

    :goto_1
    return-void

    :cond_5
    new-instance p0, Lcom/google/gson/JsonParseException;

    const-string p1, "Field has no @Protobuf config"

    invoke-direct {p0, p1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzk$1(Lcom/google/firebase/encoders/ObjectEncoder;Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)V
    .locals 4

    const-class v0, Ljava/lang/Throwable;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzaf;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzaf;-><init>(I)V

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1, p3, p0}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-wide v2, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzaf;->zza:J

    goto :goto_1

    :goto_0
    iget-wide v2, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzaf;->zza:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    if-eqz p4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p4, v2, v0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzh(Lcom/google/firebase/encoders/FieldDescriptor;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzn(I)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzo(J)V

    invoke-interface {p1, p3, p0}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    iput-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_5
    const-string p2, "addSuppressed"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Class;

    aput-object v0, p3, v2

    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :goto_3
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzn(I)V
    .locals 4

    :goto_0
    and-int/lit8 v0, p1, -0x80

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final zzo(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zze:Ljava/io/OutputStream;

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
