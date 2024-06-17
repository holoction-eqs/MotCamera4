.class public final Lcom/motorola/camera/PreviewSize;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ASPECT_RATIO_TYPES:Ljava/util/EnumMap;


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/PreviewSize$AspectRatioType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/PreviewSize;->ASPECT_RATIO_TYPES:Ljava/util/EnumMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iput v0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iput p2, p0, Lcom/motorola/camera/PreviewSize;->height:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_0
    iput p1, p0, Lcom/motorola/camera/PreviewSize;->height:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Size;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_0
    iput p1, p0, Lcom/motorola/camera/PreviewSize;->height:I

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_0
    iput p1, p0, Lcom/motorola/camera/PreviewSize;->height:I

    return-void
.end method

.method public static getPreviewSizesForAspect(Lcom/motorola/camera/PreviewSize$AspectRatioType;)Ljava/util/Collection;
    .locals 10

    sget-object v0, Lcom/motorola/camera/PreviewSize;->ASPECT_RATIO_TYPES:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatioType;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatioType;

    sget-object v2, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_PHOTO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_PHOTO_ALT:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v2, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatioType;->WIDE:Lcom/motorola/camera/PreviewSize$AspectRatioType;

    sget-object v2, Lcom/motorola/camera/PreviewSize$AspectRatio;->CLI_VIDEO:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatioType;->FULL:Lcom/motorola/camera/PreviewSize$AspectRatioType;

    sget-object v2, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v3, Lcom/motorola/camera/PreviewSize$AspectRatio;->EQUIRECTANGULAR:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE18V7P7:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v5, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE19P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v6, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE20V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v7, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE20P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v8, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    sget-object v9, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE22V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static/range {v2 .. v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public static getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;
    .locals 1

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0, p0}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    .line 1
    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/motorola/camera/PreviewSize$AspectRatio;->values()[Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Ljava/lang/Float;Ljava/util/List;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedAspectRatio(Ljava/lang/Float;Ljava/util/List;)Lcom/motorola/camera/PreviewSize$AspectRatio;
    .locals 5

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    :cond_3
    return-object v0
.end method

.method public static hasAspectRatio(Ljava/util/Collection;F)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result v0

    invoke-static {p1, v0}, Lkotlin/collections/ArraysUtilJVM;->isSameAspectRatio(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isAspectRatio(IILcom/motorola/camera/PreviewSize$AspectRatio;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result p2

    if-le p1, p0, :cond_0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    int-to-float p1, p1

    div-float p1, p0, p1

    :goto_0
    invoke-static {p2, p1}, Lkotlin/collections/ArraysUtilJVM;->isSameAspectRatio(FF)Z

    move-result p0

    return p0
.end method

.method public static isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z
    .locals 3

    if-eqz p0, :cond_1

    .line 2
    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v0

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, p0

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, p0, p1}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(IILcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSameRatioBySize(Landroid/util/Size;Landroid/util/Size;)Z
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result p0

    invoke-static {p1}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getAspectRatio()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3e4ccccd    # 0.2f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTrueAspectRatio(Landroid/util/Size;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z
    .locals 1

    invoke-static {p0}, Lkotlin/collections/ArraysUtilJVM;->isSizeValid(Landroid/util/Size;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p1

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {p1, v0}, Lkotlin/collections/ArraysUtilJVM;->isSameAspectRatio(FF)Z

    move-result p0

    return p0
.end method

.method public static isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z
    .locals 3

    if-eqz p0, :cond_1

    .line 2
    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v0

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v2, p0

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result p1

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {p1, v0}, Lkotlin/collections/ArraysUtilJVM;->isSameAspectRatio(FF)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValid(Lcom/motorola/camera/PreviewSize;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    const/4 p0, 0x0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static transformFrom(Ljava/util/List;)Ljava/util/List;
    .locals 3

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/util/Size;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v2, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v2, v1, Landroid/hardware/Camera$Size;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    check-cast v1, Landroid/hardware/Camera$Size;

    invoke-direct {v2, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/hardware/Camera$Size;)V

    goto :goto_1

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/PreviewSize;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/motorola/camera/PreviewSize;

    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v2, p1, Lcom/motorola/camera/PreviewSize;->width:I

    if-ne v1, v2, :cond_1

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final getAspectRatio()F
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "dimension is zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getMax()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getMin()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final getTrueAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "dimension is zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0x56a

    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2a

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final isSameAspectRatio(Lcom/motorola/camera/PreviewSize;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result p0

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result p1

    invoke-static {p0, p1}, Lkotlin/collections/ArraysUtilJVM;->isSameAspectRatio(FF)Z

    move-result p0

    return p0
.end method

.method public final toSize()Landroid/util/Size;
    .locals 2

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method
