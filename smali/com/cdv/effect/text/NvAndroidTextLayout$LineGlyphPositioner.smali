.class Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/effect/text/NvAndroidTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineGlyphPositioner"
.end annotation


# instance fields
.field allLtr:Z

.field glyphIndexInLine:I

.field lineInternalGlyphInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;",
            ">;"
        }
    .end annotation
.end field

.field paragraphDirection:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;->glyphIndexInLine:I

    iput-object p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;->lineInternalGlyphInfoArray:Ljava/util/ArrayList;

    iput p2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;->paragraphDirection:I

    iput-boolean p3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;->allLtr:Z

    return-void
.end method

.method private internalNextGlyphPosition()F
    .locals 5

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;->lineInternalGlyphInfoArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;->glyphIndexInLine:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;

    iget-boolean v1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;->allLtr:Z

    if-eqz v1, :cond_0

    iget p0, v0, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->primaryHorizontal:F

    return p0

    :cond_0
    iget v1, v0, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->primaryHorizontal:F

    iget v2, v0, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->secondaryHorizontal:F

    cmpl-float v3, v1, v2

    if-nez v3, :cond_2

    iget-boolean p0, v0, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->isRtl:Z

    if-nez p0, :cond_1

    return v1

    :cond_1
    iget p0, v0, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->advance:F

    sub-float/2addr v1, p0

    return v1

    :cond_2
    iget-boolean v3, v0, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->isRtl:Z

    const/4 v4, 0x1

    iget p0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;->paragraphDirection:I

    if-nez v3, :cond_4

    if-ne p0, v4, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    if-ne p0, v4, :cond_1

    iget p0, v0, Lcom/cdv/effect/text/NvAndroidTextLayout$InternalGlyphInfo;->advance:F

    sub-float/2addr v2, p0

    return v2
.end method


# virtual methods
.method public nextGlyphPosition()F
    .locals 2

    iget v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;->glyphIndexInLine:I

    iget-object v1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;->lineInternalGlyphInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const-string p0, "NvAndroidTextLayout"

    const-string v0, "LineGlyphPositioner: glyph index out of range!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;->internalNextGlyphPosition()F

    move-result v0

    iget v1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;->glyphIndexInLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LineGlyphPositioner;->glyphIndexInLine:I

    return v0
.end method
