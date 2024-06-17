.class public Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/effect/text/NvAndroidTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomTypefaceSpan"
.end annotation


# instance fields
.field private m_italic:I

.field private m_typeface:Landroid/graphics/Typeface;

.field private m_weight:I

.field final synthetic this$0:Lcom/cdv/effect/text/NvAndroidTextLayout;


# direct methods
.method public constructor <init>(Lcom/cdv/effect/text/NvAndroidTextLayout;Landroid/graphics/Typeface;II)V
    .locals 0

    iput-object p1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;->this$0:Lcom/cdv/effect/text/NvAndroidTextLayout;

    const-string p1, ""

    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;->m_typeface:Landroid/graphics/Typeface;

    iput p3, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;->m_weight:I

    iput p4, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;->m_italic:I

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;->m_typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;->this$0:Lcom/cdv/effect/text/NvAndroidTextLayout;

    iget v1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;->m_weight:I

    iget p0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;->m_italic:I

    invoke-static {v0, p1, v1, p0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->access$000(Lcom/cdv/effect/text/NvAndroidTextLayout;Landroid/graphics/Paint;II)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;->m_typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;->this$0:Lcom/cdv/effect/text/NvAndroidTextLayout;

    iget v1, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;->m_weight:I

    iget p0, p0, Lcom/cdv/effect/text/NvAndroidTextLayout$CustomTypefaceSpan;->m_italic:I

    invoke-static {v0, p1, v1, p0}, Lcom/cdv/effect/text/NvAndroidTextLayout;->access$000(Lcom/cdv/effect/text/NvAndroidTextLayout;Landroid/graphics/Paint;II)V

    return-void
.end method
