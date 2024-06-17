.class public Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/effect/text/NvAndroidTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlyphInfo"
.end annotation


# instance fields
.field public bounding:Landroid/graphics/RectF;

.field public colorGlyph:Z

.field public decorativeGlyph:Z

.field public endCharIdx:I

.field fontAscent:F

.field fontDescent:F

.field public glyphPath:Landroid/graphics/Path;

.field public isRtl:Z

.field public lineEnd:I

.field public lineStart:I

.field public mayHaveContextualForm:Z

.field public noShape:Z

.field paint:Landroid/graphics/Paint;

.field public pos:Landroid/graphics/PointF;

.field public startCharIdx:I

.field underline:Z

.field visualSpanSegment:Lcom/cdv/effect/text/NvAndroidTextLayout$VisualSpanSegment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->colorGlyph:Z

    iput-boolean v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->noShape:Z

    iput-boolean v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->decorativeGlyph:Z

    iput-boolean v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->mayHaveContextualForm:Z

    iput-boolean v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->isRtl:Z

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->endCharIdx:I

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->lineStart:I

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->lineEnd:I

    iput-boolean v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->underline:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontAscent:F

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->fontDescent:F

    return-void
.end method
