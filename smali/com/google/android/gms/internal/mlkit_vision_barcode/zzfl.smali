.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;

.field public static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzd:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zze:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzf:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzg:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzh:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;

    new-instance v0, Lcom/adobe/xmp/impl/ParseState;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    const/4 v2, 0x1

    iput v2, v0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    invoke-static {v2, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "errorCode"

    invoke-direct {v3, v4, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    new-instance v0, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    const/4 v3, 0x2

    iput v3, v0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "hasResult"

    invoke-direct {v3, v4, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    new-instance v0, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    const/4 v3, 0x3

    iput v3, v0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "isColdCall"

    invoke-direct {v3, v4, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    new-instance v0, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    const/4 v3, 0x4

    iput v3, v0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "imageInfo"

    invoke-direct {v3, v4, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    new-instance v0, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    const/4 v3, 0x5

    iput v3, v0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "options"

    invoke-direct {v3, v4, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    new-instance v0, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    const/4 v3, 0x6

    iput v3, v0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "detectedBarcodeFormats"

    invoke-direct {v3, v4, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    new-instance v0, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    iput v1, v0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-static {v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "detectedBarcodeValueTypes"

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-interface {p2, v0, p0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzc:Ljava/lang/Boolean;

    invoke-interface {p2, p0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfl;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcd;

    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method
