.class public final Landroidx/media3/ui/WebViewSubtitleOutput;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/ui/SubtitleView$Output;


# instance fields
.field public bottomPaddingFraction:F

.field public final canvasSubtitleOutput:Landroidx/media3/ui/CanvasSubtitleOutput;

.field public defaultTextSize:F

.field public defaultTextSizeType:I

.field public style:Landroidx/media3/ui/CaptionStyleCompat;

.field public textCues:Ljava/util/List;

.field public final webView:Landroidx/media3/ui/WebViewSubtitleOutput$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    sget-object v0, Landroidx/media3/ui/CaptionStyleCompat;->DEFAULT:Landroidx/media3/ui/CaptionStyleCompat;

    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    const v1, 0x3da3d70a    # 0.08f

    iput v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    new-instance v1, Landroidx/media3/ui/CanvasSubtitleOutput;

    invoke-direct {v1, p1}, Landroidx/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Landroidx/media3/ui/CanvasSubtitleOutput;

    new-instance v2, Landroidx/media3/ui/WebViewSubtitleOutput$1;

    invoke-direct {v2, p1}, Landroidx/media3/ui/WebViewSubtitleOutput$1;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroidx/media3/ui/WebViewSubtitleOutput$1;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static anchorTypeToTranslatePercent(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, -0x64

    return p0

    :cond_1
    const/16 p0, -0x32

    return p0
.end method


# virtual methods
.method public final convertTextSizeToCss(FI)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1}, Lkotlin/reflect/TypesJVMKt;->resolveTextSize(FIII)F

    move-result p1

    const p2, -0x800001

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    const-string p0, "unset"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.2fpx"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->updateWebView()V

    :cond_0
    return-void
.end method

.method public final update(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V
    .locals 6

    iput-object p2, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iput p3, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    iput p4, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    iput p5, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/text/Cue;

    iget-object v4, v3, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->updateWebView()V

    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Landroidx/media3/ui/CanvasSubtitleOutput;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/ui/CanvasSubtitleOutput;->update(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateWebView()V
    .locals 40

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iget v4, v4, Landroidx/media3/ui/CaptionStyleCompat;->foregroundColor:I

    invoke-static {v4}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    iget v6, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    invoke-virtual {v0, v6, v4}, Landroidx/media3/ui/WebViewSubtitleOutput;->convertTextSizeToCss(FI)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const v4, 0x3f99999a    # 1.2f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v3, v8

    iget-object v7, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iget v9, v7, Landroidx/media3/ui/CaptionStyleCompat;->edgeType:I

    const-string v10, "unset"

    const/4 v11, 0x3

    iget v7, v7, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    if-eq v9, v6, :cond_3

    if-eq v9, v8, :cond_2

    if-eq v9, v11, :cond_1

    if-eq v9, v2, :cond_0

    move-object v2, v10

    goto :goto_0

    :cond_0
    invoke-static {v7}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v7, "-0.05em -0.05em 0.15em %s"

    invoke-static {v7, v2}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {v7}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v7, "0.06em 0.08em 0.15em %s"

    invoke-static {v7, v2}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {v7}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v7, "0.1em 0.12em 0.15em %s"

    invoke-static {v7, v2}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {v7}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v7, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    invoke-static {v7, v2}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v3, v11

    const-string v2, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iget v3, v3, Landroidx/media3/ui/CaptionStyleCompat;->backgroundColor:I

    invoke-static {v3}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v7, "background-color:%s;"

    invoke-static {v7, v3}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v8, ".default_bg,.default_bg *"

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v3, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_4d

    iget-object v3, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/text/Cue;

    iget v8, v3, Landroidx/media3/common/text/Cue;->position:F

    const v9, -0x800001

    cmpl-float v11, v8, v9

    const/high16 v12, 0x42c80000    # 100.0f

    if-eqz v11, :cond_4

    mul-float/2addr v8, v12

    goto :goto_2

    :cond_4
    const/high16 v8, 0x42480000    # 50.0f

    :goto_2
    iget v11, v3, Landroidx/media3/common/text/Cue;->positionAnchor:I

    invoke-static {v11}, Landroidx/media3/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v11

    iget v13, v3, Landroidx/media3/common/text/Cue;->line:F

    cmpl-float v14, v13, v9

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v9, "%.2f%%"

    iget v15, v3, Landroidx/media3/common/text/Cue;->verticalType:I

    if-eqz v14, :cond_7

    iget v14, v3, Landroidx/media3/common/text/Cue;->lineType:I

    if-eq v14, v6, :cond_5

    mul-float/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v4}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v13, v3, Landroidx/media3/common/text/Cue;->lineAnchor:I

    invoke-static {v13}, Landroidx/media3/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v13

    if-ne v15, v6, :cond_8

    neg-int v13, v13

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    cmpl-float v14, v13, v6

    const-string v6, "%.2fem"

    if-ltz v14, :cond_6

    mul-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    neg-float v13, v13

    sub-float v13, v13, v16

    mul-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    :goto_3
    const/4 v13, 0x0

    goto :goto_5

    :cond_7
    iget v4, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    sub-float v16, v16, v4

    mul-float v16, v16, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v4}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v13, -0x64

    :cond_8
    :goto_4
    const/4 v6, 0x0

    :goto_5
    iget v14, v3, Landroidx/media3/common/text/Cue;->size:F

    const v16, -0x800001

    cmpl-float v16, v14, v16

    if-eqz v16, :cond_9

    mul-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v9, v14}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_9
    const-string v9, "fit-content"

    :goto_6
    const-string v14, "end"

    const-string v16, "start"

    const-string v17, "center"

    iget-object v12, v3, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    if-nez v12, :cond_a

    const/4 v12, 0x2

    move-object/from16 v18, v10

    :goto_7
    move/from16 v19, v11

    move-object/from16 v10, v17

    goto :goto_8

    :cond_a
    sget-object v18, Landroidx/media3/ui/WebViewSubtitleOutput$2;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v18, v12

    move-object/from16 v18, v10

    const/4 v10, 0x1

    if-eq v12, v10, :cond_c

    const/4 v10, 0x2

    if-eq v12, v10, :cond_b

    move v12, v10

    goto :goto_7

    :cond_b
    move v12, v10

    move/from16 v19, v11

    move-object v10, v14

    goto :goto_8

    :cond_c
    const/4 v12, 0x2

    move/from16 v19, v11

    move-object/from16 v10, v16

    :goto_8
    const/4 v11, 0x1

    if-eq v15, v11, :cond_e

    if-eq v15, v12, :cond_d

    const-string v11, "horizontal-tb"

    goto :goto_9

    :cond_d
    const-string v11, "vertical-lr"

    goto :goto_9

    :cond_e
    const-string v11, "vertical-rl"

    :goto_9
    iget v12, v3, Landroidx/media3/common/text/Cue;->textSizeType:I

    move/from16 v20, v13

    iget v13, v3, Landroidx/media3/common/text/Cue;->textSize:F

    invoke-virtual {v0, v13, v12}, Landroidx/media3/ui/WebViewSubtitleOutput;->convertTextSizeToCss(FI)Ljava/lang/String;

    move-result-object v12

    iget-boolean v13, v3, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    if-eqz v13, :cond_f

    iget v13, v3, Landroidx/media3/common/text/Cue;->windowColor:I

    goto :goto_a

    :cond_f
    iget-object v13, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iget v13, v13, Landroidx/media3/ui/CaptionStyleCompat;->windowColor:I

    :goto_a
    invoke-static {v13}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v13

    const-string v21, "left"

    const-string v22, "top"

    move-object/from16 v23, v14

    const/4 v14, 0x1

    if-eq v15, v14, :cond_12

    const/4 v14, 0x2

    if-eq v15, v14, :cond_11

    if-eqz v6, :cond_10

    const-string v22, "bottom"

    :cond_10
    const/4 v6, 0x2

    goto :goto_d

    :cond_11
    if-eqz v6, :cond_14

    goto :goto_b

    :cond_12
    if-eqz v6, :cond_13

    goto :goto_c

    :cond_13
    :goto_b
    const-string v21, "right"

    :cond_14
    :goto_c
    const/4 v6, 0x2

    move-object/from16 v39, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v39

    :goto_d
    if-eq v15, v6, :cond_16

    const/4 v6, 0x1

    if-ne v15, v6, :cond_15

    goto :goto_e

    :cond_15
    const-string v6, "width"

    goto :goto_f

    :cond_16
    :goto_e
    const-string v6, "height"

    move/from16 v39, v20

    move/from16 v20, v19

    move/from16 v19, v39

    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    sget-object v24, Landroidx/media3/ui/SpannedToHtmlConverter;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    sget-object v0, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/RegularImmutableMap;

    const-string v24, "</span>"

    move-object/from16 v25, v1

    const-string v1, ""

    move/from16 v26, v15

    iget-object v15, v3, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    if-nez v15, :cond_17

    new-instance v14, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v14, v1, v0}, Lcom/motorola/camera/CameraKpi;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v27, v1

    goto :goto_10

    :cond_17
    move-object/from16 v27, v1

    instance-of v1, v15, Landroid/text/Spanned;

    if-nez v1, :cond_18

    new-instance v14, Lcom/motorola/camera/CameraKpi;

    invoke-static {v15}, Landroidx/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1, v0}, Lcom/motorola/camera/CameraKpi;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    :goto_10
    move-object/from16 v28, v3

    move-object/from16 v30, v7

    move-object/from16 v38, v9

    move-object/from16 v37, v10

    move-object/from16 v35, v11

    move-object/from16 v31, v12

    move-object/from16 v29, v13

    goto/16 :goto_24

    :cond_18
    check-cast v15, Landroid/text/Spanned;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move-object/from16 v28, v3

    const-class v3, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v29, v13

    const/4 v13, 0x0

    invoke-interface {v15, v13, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/BackgroundColorSpan;

    array-length v3, v1

    :goto_11
    if-ge v13, v3, :cond_19

    aget-object v30, v1, v13

    invoke-virtual/range {v30 .. v30}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v30

    move-object/from16 v31, v1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v31

    goto :goto_11

    :cond_19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v13, "bg_"

    invoke-static {v13, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v30, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v31, v12

    const-string v12, "."

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",."

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " *"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7, v3}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v30

    move-object/from16 v12, v31

    goto :goto_12

    :cond_1a
    move-object/from16 v31, v12

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v12, Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v15, v13, v3, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    array-length v12, v3

    :goto_13
    if-ge v13, v12, :cond_40

    move-object/from16 v30, v7

    aget-object v7, v3, v13

    move-object/from16 v32, v3

    instance-of v3, v7, Landroid/text/style/StrikethroughSpan;

    const/16 v33, 0x0

    if-eqz v3, :cond_1b

    const-string v34, "<span style=\'text-decoration:line-through;\'>"

    move-object/from16 v38, v9

    move-object/from16 v37, v10

    move-object/from16 v35, v11

    move/from16 v36, v14

    move-object/from16 v9, v34

    move/from16 v34, v12

    goto/16 :goto_1c

    :cond_1b
    move/from16 v34, v12

    instance-of v12, v7, Landroid/text/style/ForegroundColorSpan;

    if-eqz v12, :cond_1c

    move-object v12, v7

    check-cast v12, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v12}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v12

    invoke-static {v12}, Landroidx/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v35, v11

    const-string v11, "<span style=\'color:%s;\'>"

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_16

    :cond_1c
    move-object/from16 v35, v11

    instance-of v11, v7, Landroid/text/style/BackgroundColorSpan;

    if-eqz v11, :cond_1d

    move-object v11, v7

    check-cast v11, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v11}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "<span class=\'bg_%s\'>"

    invoke-static {v12, v11}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_16

    :cond_1d
    instance-of v11, v7, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    if-eqz v11, :cond_1e

    const-string v11, "<span style=\'text-combine-upright:all;\'>"

    goto/16 :goto_16

    :cond_1e
    instance-of v11, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v11, :cond_20

    move-object v11, v7

    check-cast v11, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v11}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v12

    invoke-virtual {v11}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v11

    int-to-float v11, v11

    if-eqz v12, :cond_1f

    goto :goto_14

    :cond_1f
    div-float/2addr v11, v14

    :goto_14
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "<span style=\'font-size:%.2fpx;\'>"

    invoke-static {v12, v11}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_16

    :cond_20
    instance-of v11, v7, Landroid/text/style/RelativeSizeSpan;

    if-eqz v11, :cond_21

    move-object v11, v7

    check-cast v11, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v11}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v11

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "<span style=\'font-size:%.2f%%;\'>"

    invoke-static {v12, v11}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_16

    :cond_21
    instance-of v11, v7, Landroid/text/style/TypefaceSpan;

    if-eqz v11, :cond_23

    move-object v11, v7

    check-cast v11, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v11}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_22

    const-string v12, "<span style=\'font-family:\"%s\";\'>"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v12, v11}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_16

    :cond_22
    :goto_15
    move-object/from16 v38, v9

    move-object/from16 v37, v10

    move/from16 v36, v14

    goto/16 :goto_1b

    :cond_23
    instance-of v11, v7, Landroid/text/style/StyleSpan;

    if-eqz v11, :cond_27

    move-object v11, v7

    check-cast v11, Landroid/text/style/StyleSpan;

    invoke-virtual {v11}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_26

    const/4 v12, 0x2

    if-eq v11, v12, :cond_25

    const/4 v12, 0x3

    if-eq v11, v12, :cond_24

    goto :goto_15

    :cond_24
    const-string v11, "<b><i>"

    goto :goto_16

    :cond_25
    const-string v11, "<i>"

    goto :goto_16

    :cond_26
    const-string v11, "<b>"

    goto :goto_16

    :cond_27
    instance-of v11, v7, Landroidx/media3/common/text/RubySpan;

    if-eqz v11, :cond_2b

    move-object v11, v7

    check-cast v11, Landroidx/media3/common/text/RubySpan;

    iget v11, v11, Landroidx/media3/common/text/RubySpan;->position:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2a

    const/4 v12, 0x1

    if-eq v11, v12, :cond_29

    const/4 v12, 0x2

    if-eq v11, v12, :cond_28

    goto :goto_15

    :cond_28
    const-string v11, "<ruby style=\'ruby-position:under;\'>"

    goto :goto_16

    :cond_29
    const-string v11, "<ruby style=\'ruby-position:over;\'>"

    goto :goto_16

    :cond_2a
    const-string v11, "<ruby style=\'ruby-position:unset;\'>"

    goto :goto_16

    :cond_2b
    instance-of v11, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v11, :cond_2c

    const-string v11, "<u>"

    :goto_16
    move-object/from16 v38, v9

    move-object/from16 v37, v10

    move-object v9, v11

    move/from16 v36, v14

    goto :goto_1c

    :cond_2c
    instance-of v11, v7, Landroidx/media3/common/text/TextEmphasisSpan;

    if-eqz v11, :cond_22

    move-object v11, v7

    check-cast v11, Landroidx/media3/common/text/TextEmphasisSpan;

    iget v12, v11, Landroidx/media3/common/text/TextEmphasisSpan;->markShape:I

    move/from16 v36, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v37, v10

    iget v10, v11, Landroidx/media3/common/text/TextEmphasisSpan;->markFill:I

    move-object/from16 v38, v9

    const/4 v9, 0x1

    if-eq v10, v9, :cond_2e

    const/4 v9, 0x2

    if-eq v10, v9, :cond_2d

    goto :goto_18

    :cond_2d
    const-string v10, "open "

    goto :goto_17

    :cond_2e
    const/4 v9, 0x2

    const-string v10, "filled "

    :goto_17
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_18
    if-eqz v12, :cond_32

    const/4 v10, 0x1

    if-eq v12, v10, :cond_31

    if-eq v12, v9, :cond_30

    const/4 v9, 0x3

    if-eq v12, v9, :cond_2f

    move-object/from16 v9, v18

    goto :goto_19

    :cond_2f
    const-string v9, "sesame"

    goto :goto_19

    :cond_30
    const-string v9, "dot"

    goto :goto_19

    :cond_31
    const-string v9, "circle"

    goto :goto_19

    :cond_32
    const-string v9, "none"

    :goto_19
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, v11, Landroidx/media3/common/text/TextEmphasisSpan;->position:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_33

    const-string v10, "over right"

    goto :goto_1a

    :cond_33
    const-string v10, "under left"

    :goto_1a
    const-string v11, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11, v9}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1c

    :goto_1b
    move-object/from16 v9, v33

    :goto_1c
    if-nez v3, :cond_3c

    instance-of v3, v7, Landroid/text/style/ForegroundColorSpan;

    if-nez v3, :cond_3c

    instance-of v3, v7, Landroid/text/style/BackgroundColorSpan;

    if-nez v3, :cond_3c

    instance-of v3, v7, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    if-nez v3, :cond_3c

    instance-of v3, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v3, :cond_3c

    instance-of v3, v7, Landroid/text/style/RelativeSizeSpan;

    if-nez v3, :cond_3c

    instance-of v3, v7, Landroidx/media3/common/text/TextEmphasisSpan;

    if-eqz v3, :cond_34

    goto :goto_1f

    :cond_34
    instance-of v3, v7, Landroid/text/style/TypefaceSpan;

    if-eqz v3, :cond_35

    move-object v3, v7

    check-cast v3, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v3}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3b

    goto :goto_1f

    :cond_35
    instance-of v3, v7, Landroid/text/style/StyleSpan;

    if-eqz v3, :cond_39

    move-object v3, v7

    check-cast v3, Landroid/text/style/StyleSpan;

    invoke-virtual {v3}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v3

    const/4 v10, 0x1

    if-eq v3, v10, :cond_38

    const/4 v10, 0x2

    if-eq v3, v10, :cond_37

    const/4 v10, 0x3

    if-eq v3, v10, :cond_36

    goto :goto_1e

    :cond_36
    const-string v3, "</i></b>"

    goto :goto_1d

    :cond_37
    const-string v3, "</i>"

    goto :goto_1d

    :cond_38
    const-string v3, "</b>"

    goto :goto_1d

    :cond_39
    instance-of v3, v7, Landroidx/media3/common/text/RubySpan;

    if-eqz v3, :cond_3a

    move-object v3, v7

    check-cast v3, Landroidx/media3/common/text/RubySpan;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "<rt>"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Landroidx/media3/common/text/RubySpan;->rubyText:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</rt></ruby>"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1d
    move-object/from16 v33, v3

    goto :goto_1e

    :cond_3a
    instance-of v3, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v3, :cond_3b

    const-string v3, "</u>"

    goto :goto_1d

    :cond_3b
    :goto_1e
    move-object/from16 v3, v33

    goto :goto_20

    :cond_3c
    :goto_1f
    move-object/from16 v3, v24

    :goto_20
    invoke-interface {v15, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-interface {v15, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-eqz v9, :cond_3f

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    invoke-direct {v11, v10, v7, v9, v3}, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    if-nez v3, :cond_3d

    new-instance v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    invoke-direct {v3}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;-><init>()V

    invoke-virtual {v0, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3d
    iget-object v3, v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->spansAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    if-nez v3, :cond_3e

    new-instance v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    invoke-direct {v3}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;-><init>()V

    invoke-virtual {v0, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3e
    iget-object v3, v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->spansRemoved:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v30

    move-object/from16 v3, v32

    move/from16 v12, v34

    move-object/from16 v11, v35

    move/from16 v14, v36

    move-object/from16 v10, v37

    move-object/from16 v9, v38

    goto/16 :goto_13

    :cond_40
    move-object/from16 v30, v7

    move-object/from16 v38, v9

    move-object/from16 v37, v10

    move-object/from16 v35, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_21
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v7, v10, :cond_43

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-interface {v15, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroidx/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    iget-object v11, v9, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->spansRemoved:Ljava/util/ArrayList;

    sget-object v12, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->FOR_CLOSING_TAGS:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v11, v9, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->spansRemoved:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_22
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_41

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    iget-object v12, v12, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_41
    iget-object v9, v9, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->spansAdded:Ljava/util/ArrayList;

    sget-object v11, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->FOR_OPENING_TAGS:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    invoke-static {v9, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_23
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_42

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    iget-object v11, v11, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_42
    add-int/lit8 v7, v7, 0x1

    move v9, v10

    goto :goto_21

    :cond_43
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {v15, v9, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/ui/SpannedToHtmlConverter;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0, v1}, Lcom/motorola/camera/CameraKpi;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    :goto_24
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_45

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_26

    :cond_44
    const/4 v1, 0x0

    goto :goto_27

    :cond_45
    :goto_26
    const/4 v1, 0x1

    :goto_27
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    goto :goto_25

    :cond_46
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v21, v0, v1

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object v22, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    aput-object v6, v0, v1

    const/4 v1, 0x6

    aput-object v38, v0, v1

    const/4 v1, 0x7

    aput-object v37, v0, v1

    const/16 v1, 0x8

    aput-object v35, v0, v1

    const/16 v1, 0x9

    aput-object v31, v0, v1

    const/16 v1, 0xa

    aput-object v29, v0, v1

    const/16 v1, 0xb

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    move-object/from16 v3, v28

    iget v1, v3, Landroidx/media3/common/text/Cue;->shearDegrees:F

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_49

    const/4 v4, 0x2

    move/from16 v6, v26

    if-eq v6, v4, :cond_48

    const/4 v4, 0x1

    if-ne v6, v4, :cond_47

    goto :goto_28

    :cond_47
    const-string v4, "skewX"

    goto :goto_29

    :cond_48
    :goto_28
    const-string v4, "skewY"

    :goto_29
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "%s(%.2fdeg)"

    invoke-static {v4, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_49
    move-object/from16 v1, v27

    :goto_2a
    const/16 v4, 0xd

    aput-object v1, v0, v4

    const-string v1, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<span class=\'%s\'>"

    const-string v4, "default_bg"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_4c

    sget-object v3, Landroidx/media3/ui/WebViewSubtitleOutput$2;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4a

    move-object/from16 v16, v17

    goto :goto_2b

    :cond_4a
    move-object/from16 v16, v23

    :cond_4b
    :goto_2b
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "<span style=\'display:inline-block; text-align:%s;\'>"

    invoke-static {v3, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v14, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_4c
    iget-object v0, v14, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    :goto_2c
    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</span></div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    const v4, 0x3f99999a    # 1.2f

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v10, v18

    move-object/from16 v7, v30

    goto/16 :goto_1

    :cond_4d
    const-string v0, "</div></body></html>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "<html><head><style>"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_4e
    const-string v2, "</style></head>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const-string v2, "base64"

    move-object/from16 v3, p0

    iget-object v3, v3, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroidx/media3/ui/WebViewSubtitleOutput$1;

    invoke-virtual {v3, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
