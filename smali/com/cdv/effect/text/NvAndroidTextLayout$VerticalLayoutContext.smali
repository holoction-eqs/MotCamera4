.class Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/effect/text/NvAndroidTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerticalLayoutContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;
    }
.end annotation


# instance fields
.field public currentGlyphCountInLine:I

.field public currentLineHeight:F

.field public firstLine:Z

.field public glyphTopLine:F

.field public height:F

.field public lineInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public lineRight:F

.field public width:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->lineInfoArray:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cdv/effect/text/NvAndroidTextLayout$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;-><init>()V

    return-void
.end method

.method private calcGlyphLineSpacingForVerticalLayout(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)F
    .locals 4

    iget-object p0, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->paint:Landroid/graphics/Paint;

    const-string v0, "X"

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    iget-object v0, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double v0, p0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget p0, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontAscent:F

    neg-float p0, p0

    iget p1, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontDescent:F

    add-float/2addr p0, p1

    :cond_0
    return p0
.end method


# virtual methods
.method public moveToNextLine(Ljava/util/ArrayList;FLandroid/graphics/Paint;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;",
            ">;F",
            "Landroid/graphics/Paint;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v0, v2

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    invoke-direct {p0, v3}, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->calcGlyphLineSpacingForVerticalLayout(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "X"

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    mul-float v0, p3, v1

    :cond_1
    iget p3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->lineRight:F

    sub-float v3, p3, v0

    add-float/2addr p3, v3

    div-float/2addr p3, v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    iget-object v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget v7, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float/2addr v6, v1

    sub-float v6, p3, v6

    iget-object v7, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iput v6, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/cdv/effect/text/NvAndroidTextLayout;->shouldWorkaroundPathOffsetIssue()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget-object v6, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v4, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_3
    iget-object v5, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->glyphPath:Landroid/graphics/Path;

    iget-object v4, v4, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Path;->offset(FF)V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;

    invoke-direct {p1}, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;-><init>()V

    iput v3, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;->lineLeft:F

    iget p3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->lineRight:F

    iput p3, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext$LineInfo;->lineRight:F

    iget-object p3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->lineInfoArray:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->width:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->width:F

    iget-boolean p3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->firstLine:Z

    if-nez p3, :cond_5

    add-float/2addr p1, p2

    iput p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->width:F

    :cond_5
    iget p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->height:F

    iget p3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->currentLineHeight:F

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->height:F

    sub-float/2addr v3, p2

    iput v3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->lineRight:F

    iput v2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->currentLineHeight:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->currentGlyphCountInLine:I

    iput v2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->glyphTopLine:F

    iput-boolean p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$VerticalLayoutContext;->firstLine:Z

    return-void
.end method
