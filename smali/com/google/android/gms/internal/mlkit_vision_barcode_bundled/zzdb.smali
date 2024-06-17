.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;


# instance fields
.field public zzc:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcn;->$r8$clinit:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzc:I

    return-void
.end method

.method public static zzc(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;
    .locals 8

    if-lez p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    goto/16 :goto_3

    :cond_0
    ushr-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzc(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzc(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object p0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result p1

    const v1, 0x7fffffff

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result p1

    if-lt v1, p1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result p1

    if-nez p1, :cond_1

    move-object p0, v2

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    const/4 p1, 0x0

    const/16 v3, 0x80

    if-ge v1, v3, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v1

    add-int v3, v0, v1

    new-array v4, v3, [B

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v5

    invoke-static {p1, v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzo(III)I

    add-int/lit8 v5, v0, 0x0

    invoke-static {p1, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzo(III)I

    if-lez v0, :cond_3

    invoke-virtual {v2, p1, v4, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zze(I[BII)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzo(III)I

    invoke-static {v0, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzo(III)I

    if-lez v1, :cond_4

    invoke-virtual {p0, p1, v4, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zze(I[BII)V

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;-><init>([B)V

    goto/16 :goto_3

    :cond_5
    instance-of v4, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    if-eqz v4, :cond_a

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    iget-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v7

    add-int/2addr v7, v6

    iget-object v6, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-ge v7, v3, :cond_8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v1

    add-int v2, v0, v1

    new-array v3, v2, [B

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzo(III)I

    add-int/lit8 v4, v0, 0x0

    invoke-static {p1, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzo(III)I

    if-lez v0, :cond_6

    invoke-virtual {v5, p1, v3, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zze(I[BII)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v4

    invoke-static {p1, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzo(III)I

    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzo(III)I

    if-lez v1, :cond_7

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zze(I[BII)V

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;-><init>([B)V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    invoke-direct {p1, v6, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzf()I

    move-result p1

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzf()I

    move-result v3

    if-le p1, v3, :cond_a

    iget p1, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzg:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzf()I

    move-result v3

    if-gt p1, v3, :cond_9

    goto :goto_0

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    invoke-direct {p1, v5, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    invoke-direct {p0, v6, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    goto :goto_3

    :cond_a
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzf()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzf()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzc(I)I

    move-result p1

    if-lt v1, p1, :cond_b

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    invoke-direct {p1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    :goto_1
    move-object p0, p1

    goto :goto_3

    :cond_b
    new-instance p1, Lcom/google/common/base/Splitter$1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/common/base/Splitter$1;-><init>(Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;)V

    invoke-virtual {p1, v2}, Lcom/google/common/base/Splitter$1;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    invoke-virtual {p1, p0}, Lcom/google/common/base/Splitter$1;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    iget-object p0, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    :goto_2
    iget-object v0, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    move-object p0, v1

    goto :goto_2

    :cond_c
    :goto_3
    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result p0

    const-string v1, "ByteString would be too long: "

    const-string v2, "+"

    invoke-static {v1, v0, v2, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "length (%s) must be >= 1"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzo(III)I
    .locals 3

    or-int v0, p0, p1

    sub-int v1, p1, p0

    or-int/2addr v0, v1

    sub-int v2, p2, p1

    or-int/2addr v0, v2

    if-gez v0, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Beginning index larger than ending index: "

    const-string v1, ", "

    invoke-static {v0, p0, v1, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "End index: "

    const-string v1, " >= "

    invoke-static {v0, p1, v1, p2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Beginning index: "

    const-string v0, " < 0"

    invoke-static {p2, p0, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v1
.end method

.method public static zzr(II[B)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;
    .locals 3

    add-int v0, p0, p1

    array-length v1, p2

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzo(III)I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    new-array v1, p1, [B

    const/4 v2, 0x0

    invoke-static {p2, p0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;-><init>([B)V

    return-object v0
.end method

.method public static zzs(Ljava/io/InputStream;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x100

    :goto_0
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_1

    sub-int v5, v1, v4

    invoke-virtual {p0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr v4, v5

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v4, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzr(II[B)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzc(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method public static zzv(II)V
    .locals 3

    add-int/lit8 v0, p0, 0x1

    sub-int v0, p1, v0

    or-int/2addr v0, p0

    if-gez v0, :cond_1

    if-gez p0, :cond_0

    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Index < 0: "

    invoke-static {v0, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Index > length: "

    const-string v2, ", "

    invoke-static {v1, p0, v2, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzc:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v1

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzi(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzc:I

    :cond_1
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzq()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_0

    invoke-static {p0}, Lkotlin/ExceptionsKt;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzk(II)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object p0

    invoke-static {p0}, Lkotlin/ExceptionsKt;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "..."

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "<ByteString@%s size=%d contents=\"%s\">"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract zza(I)B
.end method

.method public abstract zzb(I)B
.end method

.method public abstract zzd()I
.end method

.method public abstract zze(I[BII)V
.end method

.method public abstract zzf()I
.end method

.method public abstract zzh()Z
.end method

.method public abstract zzi(III)I
.end method

.method public abstract zzj(III)I
.end method

.method public abstract zzk(II)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;
.end method

.method public abstract zzl(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract zzm(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdg;)V
.end method

.method public abstract zzn()Z
.end method

.method public zzq()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    return-object v0
.end method
