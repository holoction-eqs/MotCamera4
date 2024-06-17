.class Lcom/cdv/effect/text/NvAndroidTextLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/effect/text/NvAndroidTextLayout;->appendUnderlineGlyphs()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cdv/effect/text/NvAndroidTextLayout;


# direct methods
.method public constructor <init>(Lcom/cdv/effect/text/NvAndroidTextLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$1;->this$0:Lcom/cdv/effect/text/NvAndroidTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$1;->this$0:Lcom/cdv/effect/text/NvAndroidTextLayout;

    invoke-static {p0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->access$300(Lcom/cdv/effect/text/NvAndroidTextLayout;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    iget-object p1, p2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    cmpg-float p2, p0, p1

    if-gez p2, :cond_0

    return v2

    :cond_0
    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    iget-object p0, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget-object p1, p2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p2, p0, p1

    if-gez p2, :cond_3

    return v2

    :cond_3
    cmpl-float p0, p0, p1

    if-lez p0, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    check-cast p2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    invoke-virtual {p0, p1, p2}, Lcom/cdv/effect/text/NvAndroidTextLayout$1;->compare(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)I

    move-result p0

    return p0
.end method
