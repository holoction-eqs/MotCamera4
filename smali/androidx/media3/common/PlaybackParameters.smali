.class public final Landroidx/media3/common/PlaybackParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final DEFAULT:Landroidx/media3/common/PlaybackParameters;


# instance fields
.field public final pitch:F

.field public final scaledUsPerMs:I

.field public final speed:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    sput-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/common/PlaybackParameters;->speed:F

    iput p2, p0, Landroidx/media3/common/PlaybackParameters;->pitch:F

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroidx/media3/common/PlaybackParameters;->scaledUsPerMs:I

    return-void
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

    const-class v2, Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/PlaybackParameters;

    iget v2, p0, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget v3, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget p0, p0, Landroidx/media3/common/PlaybackParameters;->pitch:F

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->pitch:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

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
    .locals 1

    iget v0, p0, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/media3/common/PlaybackParameters;->pitch:F

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/PlaybackParameters;->pitch:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "PlaybackParameters(speed=%.2f, pitch=%.2f)"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
