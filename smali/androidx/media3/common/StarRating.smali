.class public final Landroidx/media3/common/StarRating;
.super Landroidx/media3/common/Rating;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

.field public static final FIELD_MAX_STARS:Ljava/lang/String;

.field public static final FIELD_STAR_RATING:Ljava/lang/String;


# instance fields
.field public final maxStars:I

.field public final starRating:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/StarRating;->FIELD_MAX_STARS:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/StarRating;->FIELD_STAR_RATING:Ljava/lang/String;

    new-instance v0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/common/StarRating;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/media3/common/Rating;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "maxStars must be a positive integer"

    invoke-static {v3, v2}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    int-to-float v2, p2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "starRating is out of range [0, maxStars]"

    invoke-static {v1, v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Ljava/lang/String;Z)V

    iput p2, p0, Landroidx/media3/common/StarRating;->maxStars:I

    iput p1, p0, Landroidx/media3/common/StarRating;->starRating:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroidx/media3/common/Rating;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxStars must be a positive integer"

    invoke-static {v1, v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Ljava/lang/String;Z)V

    iput p1, p0, Landroidx/media3/common/StarRating;->maxStars:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroidx/media3/common/StarRating;->starRating:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/media3/common/StarRating;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/media3/common/StarRating;

    iget v0, p1, Landroidx/media3/common/StarRating;->maxStars:I

    iget v2, p0, Landroidx/media3/common/StarRating;->maxStars:I

    if-ne v2, v0, :cond_1

    iget p0, p0, Landroidx/media3/common/StarRating;->starRating:F

    iget p1, p1, Landroidx/media3/common/StarRating;->starRating:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroidx/media3/common/StarRating;->maxStars:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/StarRating;->starRating:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
