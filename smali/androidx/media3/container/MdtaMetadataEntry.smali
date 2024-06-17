.class public final Landroidx/media3/container/MdtaMetadataEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/container/MdtaMetadataEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:Ljava/lang/String;

.field public final localeIndicator:I

.field public final typeIndicator:I

.field public final value:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/Metadata$1;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Landroidx/media3/common/Metadata$1;-><init>(I)V

    sput-object v0, Landroidx/media3/container/MdtaMetadataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    iput-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    iput p3, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    iput p4, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/container/MdtaMetadataEntry;

    iget-object v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    iget-object v3, p1, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    iget v3, p1, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    iget p1, p1, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    const/16 v1, 0x20f

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    const/4 v1, 0x1

    iget v2, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    if-eq v2, v1, :cond_5

    const/16 v3, 0x17

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-eq v2, v3, :cond_3

    const/16 v3, 0x43

    if-eq v2, v3, :cond_1

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/2addr v2, v5

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    array-length v2, v0

    if-ge v7, v2, :cond_0

    aget-byte v2, v0, v7

    shr-int/2addr v2, v8

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v2, v0, v7

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_1
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    array-length v2, v0

    if-ne v2, v8, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v7

    :goto_1
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    aget-byte v2, v0, v7

    shl-int/lit8 v2, v2, 0x18

    aget-byte v1, v0, v1

    shl-int/2addr v1, v6

    or-int/2addr v1, v2

    aget-byte v2, v0, v5

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v0, v0, v4

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    array-length v2, v0

    if-ne v2, v8, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v7

    :goto_2
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    aget-byte v2, v0, v7

    shl-int/lit8 v2, v2, 0x18

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v1, v2

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-static {v0}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mdta: key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/media3/container/MdtaMetadataEntry;->value:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget p2, p0, Landroidx/media3/container/MdtaMetadataEntry;->localeIndicator:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
