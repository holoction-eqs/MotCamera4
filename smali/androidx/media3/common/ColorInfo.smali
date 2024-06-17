.class public final Landroidx/media3/common/ColorInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

.field public static final FIELD_COLOR_RANGE:Ljava/lang/String;

.field public static final FIELD_COLOR_SPACE:Ljava/lang/String;

.field public static final FIELD_COLOR_TRANSFER:Ljava/lang/String;

.field public static final FIELD_HDR_STATIC_INFO:Ljava/lang/String;

.field public static final SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;


# instance fields
.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public hashCode:I

.field public final hdrStaticInfo:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/media3/common/ColorInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/common/ColorInfo;-><init>(I[BII)V

    sput-object v0, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/ColorInfo;->FIELD_COLOR_SPACE:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/ColorInfo;->FIELD_COLOR_RANGE:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/ColorInfo;->FIELD_COLOR_TRANSFER:Ljava/lang/String;

    invoke-static {v4}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/ColorInfo;->FIELD_HDR_STATIC_INFO:Ljava/lang/String;

    new-instance v0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/common/ColorInfo;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/ColorInfo;->colorSpace:I

    iput p3, p0, Landroidx/media3/common/ColorInfo;->colorRange:I

    iput p4, p0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    iput-object p2, p0, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    return-void
.end method

.method public static colorTransferToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_6

    const/16 v0, 0xa

    if-eq p0, v0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const-string p0, "Undefined color transfer"

    return-object p0

    :cond_0
    const-string p0, "HLG"

    return-object p0

    :cond_1
    const-string p0, "ST2084 PQ"

    return-object p0

    :cond_2
    const-string p0, "SDR SMPTE 170M"

    return-object p0

    :cond_3
    const-string p0, "sRGB"

    return-object p0

    :cond_4
    const-string p0, "Linear"

    return-object p0

    :cond_5
    const-string p0, "Gamma 2.2"

    return-object p0

    :cond_6
    const-string p0, "Unset color transfer"

    return-object p0
.end method

.method public static isoColorPrimariesToColorSpace(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    const/4 v1, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static isoTransferCharacteristicsToColorTransfer(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    const/4 v1, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    const/4 v2, 0x7

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_4

    if-eq p0, v2, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/16 p0, 0xa

    return p0

    :cond_4
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Landroidx/media3/common/ColorInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/ColorInfo;

    iget v2, p0, Landroidx/media3/common/ColorInfo;->colorSpace:I

    iget v3, p1, Landroidx/media3/common/ColorInfo;->colorSpace:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/ColorInfo;->colorRange:I

    iget v3, p1, Landroidx/media3/common/ColorInfo;->colorRange:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    iget v3, p1, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    iget-object p1, p1, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

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
    .locals 2

    iget v0, p0, Landroidx/media3/common/ColorInfo;->hashCode:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    iget v1, p0, Landroidx/media3/common/ColorInfo;->colorSpace:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/ColorInfo;->colorRange:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/common/ColorInfo;->hashCode:I

    :cond_0
    iget p0, p0, Landroidx/media3/common/ColorInfo;->hashCode:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    iget v4, p0, Landroidx/media3/common/ColorInfo;->colorSpace:I

    if-eq v4, v2, :cond_3

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    if-eq v4, v3, :cond_1

    if-eq v4, v1, :cond_0

    const-string v4, "Undefined color space"

    goto :goto_0

    :cond_0
    const-string v4, "BT601"

    goto :goto_0

    :cond_1
    const-string v4, "BT709"

    goto :goto_0

    :cond_2
    const-string v4, "BT2020"

    goto :goto_0

    :cond_3
    const-string v4, "Unset color space"

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/media3/common/ColorInfo;->colorRange:I

    if-eq v5, v2, :cond_6

    if-eq v5, v3, :cond_5

    if-eq v5, v1, :cond_4

    const-string v1, "Undefined color range"

    goto :goto_1

    :cond_4
    const-string v1, "Limited range"

    goto :goto_1

    :cond_5
    const-string v1, "Full range"

    goto :goto_1

    :cond_6
    const-string v1, "Unset color range"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->colorTransferToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
