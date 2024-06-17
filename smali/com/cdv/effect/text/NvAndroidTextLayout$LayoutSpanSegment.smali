.class public Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/effect/text/NvAndroidTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutSpanSegment"
.end annotation


# instance fields
.field end:I

.field fontSizeRatio:F

.field italic:I

.field paint:Landroid/graphics/Paint;

.field start:I

.field typeface:Landroid/graphics/Typeface;

.field underline:I

.field weight:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->fontSizeRatio:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->weight:I

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->italic:I

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->underline:I

    iput p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->start:I

    iput p2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$LayoutSpanSegment;->end:I

    return-void
.end method
