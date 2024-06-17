.class public final Landroidx/media3/common/PercentageRating;
.super Landroidx/media3/common/Rating;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

.field public static final FIELD_PERCENT:Ljava/lang/String;


# instance fields
.field public final percent:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/PercentageRating;->FIELD_PERCENT:Ljava/lang/String;

    new-instance v0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/common/PercentageRating;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/common/Rating;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/media3/common/PercentageRating;->percent:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroidx/media3/common/Rating;-><init>()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "percent must be in the range of [0, 100]"

    invoke-static {v1, v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Ljava/lang/String;Z)V

    iput p1, p0, Landroidx/media3/common/PercentageRating;->percent:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/media3/common/PercentageRating;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/media3/common/PercentageRating;

    iget p1, p1, Landroidx/media3/common/PercentageRating;->percent:F

    iget p0, p0, Landroidx/media3/common/PercentageRating;->percent:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/media3/common/PercentageRating;->percent:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
