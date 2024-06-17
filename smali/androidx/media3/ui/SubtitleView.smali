.class public final Landroidx/media3/ui/SubtitleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public applyEmbeddedFontSizes:Z

.field public applyEmbeddedStyles:Z

.field public bottomPaddingFraction:F

.field public cues:Ljava/util/List;

.field public defaultTextSize:F

.field public defaultTextSizeType:I

.field public innerSubtitleView:Landroid/view/View;

.field public output:Landroidx/media3/ui/SubtitleView$Output;

.field public style:Landroidx/media3/ui/CaptionStyleCompat;

.field public viewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/SubtitleView;->cues:Ljava/util/List;

    sget-object p2, Landroidx/media3/ui/CaptionStyleCompat;->DEFAULT:Landroidx/media3/ui/CaptionStyleCompat;

    iput-object p2, p0, Landroidx/media3/ui/SubtitleView;->style:Landroidx/media3/ui/CaptionStyleCompat;

    const/4 p2, 0x0

    iput p2, p0, Landroidx/media3/ui/SubtitleView;->defaultTextSizeType:I

    const p2, 0x3d5a511a    # 0.0533f

    iput p2, p0, Landroidx/media3/ui/SubtitleView;->defaultTextSize:F

    const p2, 0x3da3d70a    # 0.08f

    iput p2, p0, Landroidx/media3/ui/SubtitleView;->bottomPaddingFraction:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedStyles:Z

    iput-boolean p2, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    new-instance v0, Landroidx/media3/ui/CanvasSubtitleOutput;

    invoke-direct {v0, p1}, Landroidx/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->output:Landroidx/media3/ui/SubtitleView$Output;

    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput p2, p0, Landroidx/media3/ui/SubtitleView;->viewType:I

    return-void
.end method

.method private getCuesWithStylingPreferencesApplied()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedStyles:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/SubtitleView;->cues:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Landroidx/media3/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/text/Cue;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v4, v3}, Landroidx/media3/common/text/Cue$Builder;-><init>(Landroidx/media3/common/text/Cue;)V

    iget-boolean v3, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedStyles:Z

    if-nez v3, :cond_3

    iput-boolean v1, v4, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    iget-object v3, v4, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    instance-of v5, v3, Landroid/text/Spanned;

    if-eqz v5, :cond_2

    instance-of v5, v3, Landroid/text/Spannable;

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    iput-object v3, v4, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    :cond_1
    iget-object v3, v4, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/text/Spannable;

    new-instance v5, Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v3, v5}, Lkotlin/reflect/TypesJVMKt;->removeSpansIf(Landroid/text/Spannable;Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;)V

    :cond_2
    invoke-static {v4}, Lkotlin/reflect/TypesJVMKt;->removeEmbeddedFontSizes(Landroidx/media3/common/text/Cue$Builder;)V

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-nez v3, :cond_4

    invoke-static {v4}, Lkotlin/reflect/TypesJVMKt;->removeEmbeddedFontSizes(Landroidx/media3/common/text/Cue$Builder;)V

    :cond_4
    :goto_1
    invoke-virtual {v4}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private getUserCaptionFontScale()F
    .locals 3

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    const/high16 v2, 0x3f800000    # 1.0f

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    :cond_1
    :goto_0
    return v2
.end method

.method private getUserCaptionStyle()Landroidx/media3/ui/CaptionStyleCompat;
    .locals 17

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    sget-object v2, Landroidx/media3/ui/CaptionStyleCompat;->DEFAULT:Landroidx/media3/ui/CaptionStyleCompat;

    if-lt v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "captioning"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_6

    new-instance v0, Landroidx/media3/ui/CaptionStyleCompat;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1

    :cond_2
    const/high16 v2, -0x1000000

    :goto_1
    move v5, v2

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    iget v2, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_2

    :cond_3
    move v2, v6

    :goto_2
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v6, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :cond_4
    move v7, v6

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v6

    if-eqz v6, :cond_5

    iget v3, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :cond_5
    move v8, v3

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    move-object v3, v0

    move v6, v2

    invoke-direct/range {v3 .. v9}, Landroidx/media3/ui/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    goto :goto_3

    :cond_6
    new-instance v0, Landroidx/media3/ui/CaptionStyleCompat;

    iget v11, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iget v12, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    const/4 v13, 0x0

    iget v14, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iget v15, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v16

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Landroidx/media3/ui/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    :goto_3
    move-object v2, v0

    :cond_7
    :goto_4
    return-object v2
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Landroidx/media3/ui/SubtitleView$Output;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    instance-of v1, v0, Landroidx/media3/ui/WebViewSubtitleOutput;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/media3/ui/WebViewSubtitleOutput;

    iget-object v0, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroidx/media3/ui/WebViewSubtitleOutput$1;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Landroidx/media3/ui/SubtitleView$Output;

    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->output:Landroidx/media3/ui/SubtitleView$Output;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setApplyEmbeddedFontSizes(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->updateOutput()V

    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/SubtitleView;->applyEmbeddedStyles:Z

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->updateOutput()V

    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .locals 0

    iput p1, p0, Landroidx/media3/ui/SubtitleView;->bottomPaddingFraction:F

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->updateOutput()V

    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->updateOutput()V

    return-void
.end method

.method public setFractionalTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/ui/SubtitleView;->defaultTextSizeType:I

    iput p1, p0, Landroidx/media3/ui/SubtitleView;->defaultTextSize:F

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->updateOutput()V

    return-void
.end method

.method public setStyle(Landroidx/media3/ui/CaptionStyleCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->style:Landroidx/media3/ui/CaptionStyleCompat;

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->updateOutput()V

    return-void
.end method

.method public final setUserDefaultStyle()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getUserCaptionStyle()Landroidx/media3/ui/CaptionStyleCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/ui/SubtitleView;->setStyle(Landroidx/media3/ui/CaptionStyleCompat;)V

    return-void
.end method

.method public final setUserDefaultTextSize()V
    .locals 2

    const v0, 0x3d5a511a    # 0.0533f

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getUserCaptionFontScale()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroidx/media3/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void
.end method

.method public setViewType(I)V
    .locals 2

    iget v0, p0, Landroidx/media3/ui/SubtitleView;->viewType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-instance v0, Landroidx/media3/ui/WebViewSubtitleOutput;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    new-instance v0, Landroidx/media3/ui/CanvasSubtitleOutput;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {p0, v0}, Landroidx/media3/ui/SubtitleView;->setView(Landroid/view/View;)V

    iput p1, p0, Landroidx/media3/ui/SubtitleView;->viewType:I

    return-void
.end method

.method public final updateOutput()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->output:Landroidx/media3/ui/SubtitleView$Output;

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getCuesWithStylingPreferencesApplied()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/ui/SubtitleView;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iget v3, p0, Landroidx/media3/ui/SubtitleView;->defaultTextSize:F

    iget v4, p0, Landroidx/media3/ui/SubtitleView;->defaultTextSizeType:I

    iget v5, p0, Landroidx/media3/ui/SubtitleView;->bottomPaddingFraction:F

    invoke-interface/range {v0 .. v5}, Landroidx/media3/ui/SubtitleView$Output;->update(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V

    return-void
.end method
