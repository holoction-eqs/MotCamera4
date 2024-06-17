.class public final Landroidx/media3/container/NalUnitUtil$H265SpsData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final constraintBytes:[I

.field public final generalLevelIdc:I

.field public final generalProfileCompatibilityFlags:I

.field public final generalProfileIdc:I

.field public final generalProfileSpace:I

.field public final generalTierFlag:Z

.field public final height:I

.field public final pixelWidthHeightRatio:F

.field public final width:I


# direct methods
.method public constructor <init>(IZII[IIIIFIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileSpace:I

    iput-boolean p2, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalTierFlag:Z

    iput p3, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileIdc:I

    iput p4, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileCompatibilityFlags:I

    iput-object p5, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->constraintBytes:[I

    iput p6, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalLevelIdc:I

    iput p7, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    iput p8, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    iput p9, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    iput p10, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    iput p11, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    iput p12, p0, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    return-void
.end method
