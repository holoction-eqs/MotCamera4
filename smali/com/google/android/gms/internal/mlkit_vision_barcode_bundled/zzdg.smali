.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "SourceFile"


# static fields
.field public static final zzc$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzdj:Ljava/util/logging/Logger;

.field public static final zzd$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzdj:Z


# instance fields
.field public zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

.field public final zzc:[B

.field public final zzd:I

.field public zze:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzdj:Ljava/util/logging/Logger;

    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzh:Z

    sput-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzd$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzdj:Z

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/CornerTreatment;-><init>(Ljava/lang/Object;)V

    array-length v0, p1

    sub-int v1, v0, p2

    or-int/2addr v1, p2

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc:[B

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzd:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzt(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;->zzB(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result p1

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result p0

    add-int/2addr p0, p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzu(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static zzx(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhn;->zze(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhm; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzy(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzz(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    const/16 v4, 0xe

    ushr-long/2addr p0, v4

    add-int/lit8 v0, v0, 0x2

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method


# virtual methods
.method public final zzb(B)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc:[B

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzd:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzc(II[B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc:[B

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    invoke-static {p3, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p3, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzd:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Pos: %d, limit: %d, len: %d"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x2

    invoke-direct {p3, p2, p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final zze(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;)V

    return-void
.end method

.method public final zzf(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzg(I)V

    return-void
.end method

.method public final zzg(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc:[B

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzd:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzh(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzi(J)V

    return-void
.end method

.method public final zzi(J)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc:[B

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    add-int/lit8 v2, v1, 0x1

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzd:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzm(ILjava/lang/String;)V
    .locals 8

    shl-int/lit8 p1, p1, 0x3

    const/4 v0, 0x2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzy(I)I

    move-result v2
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhm; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzd:I

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc:[B

    if-ne v2, v1, :cond_0

    add-int v1, p1, v2

    :try_start_1
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    sub-int/2addr v3, v1

    invoke-static {p2, v4, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhn;->zzd(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    sub-int v3, v1, p1

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhn;->zze(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    sub-int/2addr v3, v1

    invoke-static {p2, v4, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhn;->zzd(Ljava/lang/CharSequence;[BII)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhm; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    invoke-direct {p1, p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :catch_1
    move-exception v1

    move-object v7, v1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzdj:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "com.google.protobuf.CodedOutputStream"

    const-string v5, "inefficientWriteStringNoTag"

    const-string v6, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_2
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc(II[B)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-void

    :catch_2
    move-exception p0

    new-instance p1, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    invoke-direct {p1, p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/Throwable;I)V

    throw p1
.end method

.method public final zzo(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    return-void
.end method

.method public final zzp(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    return-void
.end method

.method public final zzq(I)V
    .locals 3

    :goto_0
    and-int/lit8 v0, p1, -0x80

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc:[B

    if-nez v0, :cond_0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzd:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzr(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzq(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzs(J)V

    return-void
.end method

.method public final zzs(J)V
    .locals 12

    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzd$com$google$android$gms$internal$mlkit_vision_barcode_bundled$zzdj:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    iget v6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzd:I

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zzc:[B

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    sub-int v0, v6, v0

    const/16 v8, 0xa

    if-lt v0, v8, :cond_1

    :goto_0
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    int-to-long v0, v0

    long-to-int p0, p1

    int-to-byte p0, p0

    sget-wide p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza:J

    add-long/2addr p1, v0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    invoke-virtual {v0, v7, p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zzd(Ljava/lang/Object;JB)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    int-to-long v8, v0

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    sget-wide v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza:J

    add-long/2addr v10, v8

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;

    invoke-virtual {v6, v7, v10, v11, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhh;->zzd(Ljava/lang/Object;JB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_2

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v7, v0

    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    add-int/lit8 v8, v0, 0x1

    iput v8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;->zze:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
