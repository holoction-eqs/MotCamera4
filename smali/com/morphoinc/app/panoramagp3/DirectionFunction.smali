.class public abstract Lcom/morphoinc/app/panoramagp3/DirectionFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final angle:I

.field public direction:I

.field public final inputHeight:I

.field public final inputWidth:I

.field public final maxHeight:I

.field public final maxWidth:I

.field public final scale:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    iput p1, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->inputWidth:I

    iput p2, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->inputHeight:I

    mul-int/lit8 p5, p5, 0x2

    iput p5, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->scale:I

    iput p6, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->angle:I

    iput p3, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->maxWidth:I

    iput p4, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->maxHeight:I

    return-void
.end method


# virtual methods
.method public final getHorizontalPreviewSize()Landroid/util/Size;
    .locals 4

    iget v0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->maxWidth:I

    iget v1, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->scale:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    const/16 v2, 0x5a

    iget v3, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->angle:I

    if-eq v2, v3, :cond_1

    const/16 v2, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->inputHeight:I

    goto :goto_1

    :cond_1
    :goto_0
    iget p0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->inputWidth:I

    :goto_1
    add-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v1

    and-int/lit8 v0, v0, -0x2

    and-int/lit8 p0, p0, -0x2

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public final getVerticalPreviewSize()Landroid/util/Size;
    .locals 4

    iget v0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->maxHeight:I

    iget v1, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->scale:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    const/16 v2, 0x5a

    iget v3, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->angle:I

    if-eq v2, v3, :cond_1

    const/16 v2, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->inputWidth:I

    goto :goto_1

    :cond_1
    :goto_0
    iget p0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->inputHeight:I

    :goto_1
    add-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v1

    and-int/lit8 p0, p0, -0x2

    and-int/lit8 v0, v0, -0x2

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p0, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method
