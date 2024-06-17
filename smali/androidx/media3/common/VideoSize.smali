.class public final Landroidx/media3/common/VideoSize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final UNKNOWN:Landroidx/media3/common/VideoSize;


# instance fields
.field public final height:I

.field public final pixelWidthHeightRatio:F

.field public final unappliedRotationDegrees:I

.field public final width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/media3/common/VideoSize;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/media3/common/VideoSize;-><init>(FIII)V

    sput-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-static {v2}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(FIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/media3/common/VideoSize;->width:I

    iput p3, p0, Landroidx/media3/common/VideoSize;->height:I

    iput p4, p0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    iput p1, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/VideoSize;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Landroidx/media3/common/VideoSize;

    iget v1, p1, Landroidx/media3/common/VideoSize;->width:I

    iget v3, p0, Landroidx/media3/common/VideoSize;->width:I

    if-ne v3, v1, :cond_1

    iget v1, p0, Landroidx/media3/common/VideoSize;->height:I

    iget v3, p1, Landroidx/media3/common/VideoSize;->height:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    iget v3, p1, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    if-ne v1, v3, :cond_1

    iget p0, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    iget p1, p1, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0xd9

    iget v1, p0, Landroidx/media3/common/VideoSize;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/VideoSize;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
