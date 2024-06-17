.class public final Landroidx/media3/ui/CanvasSubtitleOutput;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/ui/SubtitleView$Output;


# instance fields
.field public bottomPaddingFraction:F

.field public cues:Ljava/util/List;

.field public final painters:Ljava/util/ArrayList;

.field public style:Landroidx/media3/ui/CaptionStyleCompat;

.field public textSize:F

.field public textSizeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->painters:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->textSizeType:I

    const p1, 0x3d5a511a    # 0.0533f

    iput p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->textSize:F

    sget-object p1, Landroidx/media3/ui/CaptionStyleCompat;->DEFAULT:Landroidx/media3/ui/CaptionStyleCompat;

    iput-object p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    const p1, 0x3da3d70a    # 0.08f

    iput p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v7, v3, v7

    if-le v7, v5, :cond_2f

    if-gt v6, v4, :cond_1

    goto/16 :goto_1e

    :cond_1
    sub-int v8, v7, v5

    iget v9, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->textSizeType:I

    iget v10, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->textSize:F

    invoke-static {v10, v9, v3, v8}, Lkotlin/reflect/TypesJVMKt;->resolveTextSize(FIII)F

    move-result v9

    const/4 v10, 0x0

    cmpg-float v11, v9, v10

    if-gtz v11, :cond_2

    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_2f

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/common/text/Cue;

    iget v15, v14, Landroidx/media3/common/text/Cue;->verticalType:I

    const/high16 v12, -0x80000000

    const/high16 v34, 0x3f800000    # 1.0f

    if-eq v15, v12, :cond_6

    iget-object v15, v14, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iget-object v12, v14, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iget-object v10, v14, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v35, v2

    iget v2, v14, Landroidx/media3/common/text/Cue;->textSizeType:I

    move/from16 v36, v11

    iget v11, v14, Landroidx/media3/common/text/Cue;->textSize:F

    iget v1, v14, Landroidx/media3/common/text/Cue;->size:F

    move/from16 v37, v7

    iget v7, v14, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    move/from16 v38, v6

    iget-boolean v6, v14, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    move/from16 v39, v5

    iget v5, v14, Landroidx/media3/common/text/Cue;->windowColor:I

    move/from16 v40, v4

    iget v4, v14, Landroidx/media3/common/text/Cue;->verticalType:I

    move/from16 v41, v9

    iget v9, v14, Landroidx/media3/common/text/Cue;->shearDegrees:F

    const v24, -0x800001

    const/16 v18, 0x0

    move/from16 v42, v13

    iget v13, v14, Landroidx/media3/common/text/Cue;->lineType:I

    iget v0, v14, Landroidx/media3/common/text/Cue;->line:F

    if-nez v13, :cond_3

    sub-float v0, v34, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    goto :goto_1

    :cond_3
    neg-float v0, v0

    sub-float v0, v0, v34

    move/from16 v21, v0

    const/16 v22, 0x1

    :goto_1
    iget v0, v14, Landroidx/media3/common/text/Cue;->lineAnchor:I

    if-eqz v0, :cond_5

    const/4 v13, 0x2

    if-eq v0, v13, :cond_4

    move/from16 v23, v0

    goto :goto_2

    :cond_4
    const/16 v23, 0x0

    goto :goto_2

    :cond_5
    const/16 v23, 0x2

    :goto_2
    new-instance v14, Landroidx/media3/common/text/Cue;

    move-object/from16 v16, v14

    move-object/from16 v17, v15

    move-object/from16 v19, v10

    move-object/from16 v20, v12

    const/high16 v0, -0x80000000

    move/from16 v25, v0

    move/from16 v26, v2

    move/from16 v27, v11

    move/from16 v28, v1

    move/from16 v29, v7

    move/from16 v30, v6

    move/from16 v31, v5

    move/from16 v32, v4

    move/from16 v33, v9

    invoke-direct/range {v16 .. v33}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    goto :goto_3

    :cond_6
    move-object/from16 v35, v2

    move/from16 v40, v4

    move/from16 v39, v5

    move/from16 v38, v6

    move/from16 v37, v7

    move/from16 v41, v9

    move/from16 v36, v11

    move/from16 v42, v13

    :goto_3
    iget v0, v14, Landroidx/media3/common/text/Cue;->textSizeType:I

    iget v1, v14, Landroidx/media3/common/text/Cue;->textSize:F

    invoke-static {v1, v0, v3, v8}, Lkotlin/reflect/TypesJVMKt;->resolveTextSize(FIII)F

    move-result v0

    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/media3/ui/CanvasSubtitleOutput;->painters:Ljava/util/ArrayList;

    move/from16 v12, v42

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/ui/SubtitlePainter;

    iget-object v4, v1, Landroidx/media3/ui/CanvasSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iget v5, v1, Landroidx/media3/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v14, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    iget-object v9, v14, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    if-eqz v7, :cond_a

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object/from16 v9, p1

    move/from16 v23, v3

    move/from16 v24, v8

    move/from16 v42, v12

    goto/16 :goto_8

    :cond_8
    iget-boolean v10, v14, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    if-eqz v10, :cond_9

    iget v10, v14, Landroidx/media3/common/text/Cue;->windowColor:I

    goto :goto_5

    :cond_9
    iget v10, v4, Landroidx/media3/ui/CaptionStyleCompat;->windowColor:I

    goto :goto_5

    :cond_a
    const/high16 v10, -0x1000000

    :goto_5
    iget-object v11, v2, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    if-eq v11, v9, :cond_c

    if-eqz v11, :cond_b

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v11, 0x1

    :goto_7
    iget-object v13, v2, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v15, v14, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    iget v1, v14, Landroidx/media3/common/text/Cue;->size:F

    move/from16 v23, v3

    iget v3, v14, Landroidx/media3/common/text/Cue;->positionAnchor:I

    move/from16 v24, v8

    iget v8, v14, Landroidx/media3/common/text/Cue;->position:F

    move/from16 v42, v12

    iget v12, v14, Landroidx/media3/common/text/Cue;->lineAnchor:I

    move-object/from16 v16, v9

    iget v9, v14, Landroidx/media3/common/text/Cue;->lineType:I

    move/from16 v25, v7

    iget v7, v14, Landroidx/media3/common/text/Cue;->line:F

    iget-object v14, v14, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    if-eqz v11, :cond_12

    iget-object v11, v2, Landroidx/media3/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    invoke-static {v11, v14}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, v2, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    if-ne v11, v6, :cond_12

    iget v11, v2, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    cmpl-float v11, v11, v7

    if-nez v11, :cond_12

    iget v11, v2, Landroidx/media3/ui/SubtitlePainter;->cueLineType:I

    if-ne v11, v9, :cond_12

    iget v11, v2, Landroidx/media3/ui/SubtitlePainter;->cueLineAnchor:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move/from16 v17, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v11, v9}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->cuePosition:F

    cmpl-float v9, v9, v8

    if-nez v9, :cond_11

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v11}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    cmpl-float v9, v9, v1

    if-nez v9, :cond_11

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->cueBitmapHeight:F

    cmpl-float v9, v9, v15

    if-nez v9, :cond_11

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->foregroundColor:I

    iget v11, v4, Landroidx/media3/ui/CaptionStyleCompat;->foregroundColor:I

    if-ne v9, v11, :cond_11

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    iget v11, v4, Landroidx/media3/ui/CaptionStyleCompat;->backgroundColor:I

    if-ne v9, v11, :cond_11

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->windowColor:I

    if-ne v9, v10, :cond_11

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    iget v11, v4, Landroidx/media3/ui/CaptionStyleCompat;->edgeType:I

    if-ne v9, v11, :cond_11

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    iget v11, v4, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    if-ne v9, v11, :cond_11

    invoke-virtual {v13}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    iget-object v11, v4, Landroidx/media3/ui/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-static {v9, v11}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    cmpl-float v9, v9, v41

    if-nez v9, :cond_11

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->cueTextSizePx:F

    cmpl-float v9, v9, v0

    if-nez v9, :cond_11

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->bottomPaddingFraction:F

    cmpl-float v9, v9, v5

    if-nez v9, :cond_11

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    move/from16 v11, v40

    if-ne v9, v11, :cond_10

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    move/from16 v40, v11

    move/from16 v11, v39

    if-ne v9, v11, :cond_f

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    move/from16 v39, v11

    move/from16 v11, v38

    if-ne v9, v11, :cond_e

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    move/from16 v38, v11

    move/from16 v11, v37

    if-ne v9, v11, :cond_d

    move-object/from16 v9, p1

    move/from16 v37, v11

    move/from16 v11, v25

    invoke-virtual {v2, v9, v11}, Landroidx/media3/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    :goto_8
    move-object v0, v9

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto/16 :goto_1d

    :cond_d
    move-object/from16 v9, p1

    move/from16 v37, v11

    goto :goto_9

    :cond_e
    move-object/from16 v9, p1

    move/from16 v38, v11

    goto :goto_9

    :cond_f
    move-object/from16 v9, p1

    move/from16 v39, v11

    goto :goto_9

    :cond_10
    move-object/from16 v9, p1

    move/from16 v40, v11

    :goto_9
    move/from16 v11, v25

    goto :goto_a

    :cond_11
    move-object/from16 v9, p1

    goto :goto_9

    :cond_12
    move/from16 v17, v9

    move/from16 v11, v25

    move-object/from16 v9, p1

    :goto_a
    move-object/from16 v9, v16

    iput-object v9, v2, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    iput-object v14, v2, Landroidx/media3/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    iput-object v6, v2, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iput v7, v2, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    move/from16 v6, v17

    iput v6, v2, Landroidx/media3/ui/SubtitlePainter;->cueLineType:I

    iput v12, v2, Landroidx/media3/ui/SubtitlePainter;->cueLineAnchor:I

    iput v8, v2, Landroidx/media3/ui/SubtitlePainter;->cuePosition:F

    iput v3, v2, Landroidx/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    iput v1, v2, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    iput v15, v2, Landroidx/media3/ui/SubtitlePainter;->cueBitmapHeight:F

    iget v1, v4, Landroidx/media3/ui/CaptionStyleCompat;->foregroundColor:I

    iput v1, v2, Landroidx/media3/ui/SubtitlePainter;->foregroundColor:I

    iget v1, v4, Landroidx/media3/ui/CaptionStyleCompat;->backgroundColor:I

    iput v1, v2, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    iput v10, v2, Landroidx/media3/ui/SubtitlePainter;->windowColor:I

    iget v1, v4, Landroidx/media3/ui/CaptionStyleCompat;->edgeType:I

    iput v1, v2, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    iget v1, v4, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    iput v1, v2, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    iget-object v1, v4, Landroidx/media3/ui/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move/from16 v1, v41

    iput v1, v2, Landroidx/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    iput v0, v2, Landroidx/media3/ui/SubtitlePainter;->cueTextSizePx:F

    iput v5, v2, Landroidx/media3/ui/SubtitlePainter;->bottomPaddingFraction:F

    move/from16 v0, v40

    iput v0, v2, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    move/from16 v3, v39

    iput v3, v2, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    move/from16 v6, v38

    iput v6, v2, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    move/from16 v4, v37

    iput v4, v2, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    const v5, -0x800001

    if-eqz v11, :cond_29

    iget-object v7, v2, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    instance-of v8, v7, Landroid/text/SpannableStringBuilder;

    if-eqz v8, :cond_13

    check-cast v7, Landroid/text/SpannableStringBuilder;

    goto :goto_b

    :cond_13
    new-instance v7, Landroid/text/SpannableStringBuilder;

    iget-object v8, v2, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_b
    iget v8, v2, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    sub-int/2addr v8, v9

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    iget v10, v2, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    sub-int/2addr v9, v10

    iget v10, v2, Landroidx/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v10, v2, Landroidx/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    const/high16 v12, 0x3e000000    # 0.125f

    mul-float/2addr v10, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v10, v12

    float-to-int v10, v10

    mul-int/lit8 v12, v10, 0x2

    sub-int v14, v8, v12

    iget v15, v2, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    cmpl-float v16, v15, v5

    if-eqz v16, :cond_14

    int-to-float v14, v14

    mul-float/2addr v14, v15

    float-to-int v14, v14

    :cond_14
    const-string v15, "SubtitlePainter"

    if-gtz v14, :cond_15

    const-string v5, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v15, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v40, v0

    move/from16 v41, v1

    move/from16 v39, v3

    move/from16 v37, v4

    move/from16 v38, v6

    move v1, v11

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    goto/16 :goto_1c

    :cond_15
    iget v5, v2, Landroidx/media3/ui/SubtitlePainter;->cueTextSizePx:F

    const/16 v16, 0x0

    cmpl-float v5, v5, v16

    move/from16 v40, v0

    if-lez v5, :cond_16

    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    iget v0, v2, Landroidx/media3/ui/SubtitlePainter;->cueTextSizePx:F

    float-to-int v0, v0

    invoke-direct {v5, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    move/from16 v41, v1

    move/from16 v39, v3

    const/high16 v1, 0xff0000

    const/4 v3, 0x0

    invoke-virtual {v7, v5, v3, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_c

    :cond_16
    move/from16 v41, v1

    move/from16 v39, v3

    const/4 v3, 0x0

    :goto_c
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v1, v2, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_17

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v3, v1, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    array-length v3, v1

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v3, :cond_17

    move/from16 v17, v3

    aget-object v3, v1, v5

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v17

    goto :goto_d

    :cond_17
    iget v1, v2, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_1a

    iget v1, v2, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    if-eqz v1, :cond_19

    const/4 v3, 0x2

    if-ne v1, v3, :cond_18

    goto :goto_e

    :cond_18
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget v3, v2, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    invoke-direct {v1, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v37, v4

    const/4 v4, 0x0

    const/high16 v5, 0xff0000

    invoke-virtual {v0, v1, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_f

    :cond_19
    :goto_e
    move/from16 v37, v4

    const/4 v4, 0x0

    const/high16 v5, 0xff0000

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget v3, v2, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    invoke-direct {v1, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v7, v1, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_f

    :cond_1a
    move/from16 v37, v4

    :goto_f
    iget-object v1, v2, Landroidx/media3/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    if-nez v1, :cond_1b

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_1b
    new-instance v3, Landroid/text/StaticLayout;

    iget v4, v2, Landroidx/media3/ui/SubtitlePainter;->spacingMult:F

    iget v5, v2, Landroidx/media3/ui/SubtitlePainter;->spacingAdd:F

    const/16 v22, 0x1

    move/from16 v38, v6

    move-object v6, v15

    move-object v15, v3

    move-object/from16 v16, v7

    move-object/from16 v17, v13

    move/from16 v18, v14

    move-object/from16 v19, v1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v15 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v2, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    iget-object v4, v2, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_10
    if-ge v5, v4, :cond_1c

    move/from16 v16, v4

    iget-object v4, v2, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    move/from16 v27, v10

    move/from16 v26, v11

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v4, v10

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v16

    move/from16 v11, v26

    move/from16 v10, v27

    goto :goto_10

    :cond_1c
    move/from16 v27, v10

    move/from16 v26, v11

    iget v4, v2, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    const v5, -0x800001

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1d

    if-ge v15, v14, :cond_1d

    goto :goto_11

    :cond_1d
    move v14, v15

    :goto_11
    add-int/2addr v14, v12

    iget v4, v2, Landroidx/media3/ui/SubtitlePainter;->cuePosition:F

    cmpl-float v10, v4, v5

    if-eqz v10, :cond_20

    int-to-float v5, v8

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v2, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    add-int/2addr v4, v5

    iget v8, v2, Landroidx/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v10, 0x1

    if-eq v8, v10, :cond_1f

    const/4 v10, 0x2

    if-eq v8, v10, :cond_1e

    goto :goto_12

    :cond_1e
    sub-int/2addr v4, v14

    goto :goto_12

    :cond_1f
    const/4 v10, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v14

    div-int/2addr v4, v10

    :goto_12
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v14, v4

    iget v5, v2, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_13

    :cond_20
    const/4 v10, 0x2

    sub-int/2addr v8, v14

    div-int/2addr v8, v10

    iget v4, v2, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    add-int/2addr v4, v8

    add-int v5, v4, v14

    :goto_13
    sub-int/2addr v5, v4

    if-gtz v5, :cond_21

    const-string v0, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    invoke-static {v6, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v26

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto/16 :goto_1c

    :cond_21
    iget v6, v2, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    const v8, -0x800001

    cmpl-float v8, v6, v8

    if-eqz v8, :cond_27

    iget v8, v2, Landroidx/media3/ui/SubtitlePainter;->cueLineType:I

    if-nez v8, :cond_24

    int-to-float v8, v9

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v8, v2, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    add-int/2addr v6, v8

    iget v8, v2, Landroidx/media3/ui/SubtitlePainter;->cueLineAnchor:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_22

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_14

    :cond_22
    const/4 v10, 0x1

    if-ne v8, v10, :cond_23

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v3

    div-int/2addr v6, v9

    :cond_23
    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_15

    :cond_24
    iget-object v6, v2, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    iget-object v9, v2, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v6, v9

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    const/4 v10, 0x0

    cmpl-float v11, v9, v10

    if-ltz v11, :cond_25

    int-to-float v6, v6

    mul-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    add-int/2addr v6, v9

    goto :goto_15

    :cond_25
    add-float v9, v9, v34

    int-to-float v6, v6

    mul-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    add-int/2addr v6, v9

    :goto_14
    sub-int/2addr v6, v3

    :goto_15
    add-int v9, v6, v3

    iget v11, v2, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    if-le v9, v11, :cond_26

    sub-int v6, v11, v3

    goto :goto_16

    :cond_26
    iget v3, v2, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    if-ge v6, v3, :cond_28

    goto :goto_17

    :cond_27
    const/4 v8, 0x0

    const/4 v10, 0x0

    iget v6, v2, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    sub-int/2addr v6, v3

    int-to-float v3, v9

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->bottomPaddingFraction:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    sub-int/2addr v6, v3

    :cond_28
    :goto_16
    move v3, v6

    :goto_17
    new-instance v6, Landroid/text/StaticLayout;

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->spacingMult:F

    iget v11, v2, Landroidx/media3/ui/SubtitlePainter;->spacingAdd:F

    const/4 v12, 0x1

    const/16 v22, 0x1

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v13

    move/from16 v18, v5

    move-object/from16 v19, v1

    move/from16 v20, v9

    move/from16 v21, v11

    invoke-direct/range {v15 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v2, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    new-instance v6, Landroid/text/StaticLayout;

    iget v7, v2, Landroidx/media3/ui/SubtitlePainter;->spacingMult:F

    iget v9, v2, Landroidx/media3/ui/SubtitlePainter;->spacingAdd:F

    move-object v15, v6

    move-object/from16 v16, v0

    move/from16 v20, v7

    move/from16 v21, v9

    move/from16 v22, v12

    invoke-direct/range {v15 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v2, Landroidx/media3/ui/SubtitlePainter;->edgeLayout:Landroid/text/StaticLayout;

    iput v4, v2, Landroidx/media3/ui/SubtitlePainter;->textLeft:I

    iput v3, v2, Landroidx/media3/ui/SubtitlePainter;->textTop:I

    move/from16 v0, v27

    iput v0, v2, Landroidx/media3/ui/SubtitlePainter;->textPaddingX:I

    goto/16 :goto_1b

    :cond_29
    move/from16 v40, v0

    move/from16 v41, v1

    move/from16 v39, v3

    move/from16 v37, v4

    move/from16 v38, v6

    move/from16 v26, v11

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v0, v2, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget v1, v2, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    iget v3, v2, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    sub-int/2addr v1, v3

    iget v4, v2, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    iget v5, v2, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    sub-int/2addr v4, v5

    int-to-float v3, v3

    int-to-float v1, v1

    iget v6, v2, Landroidx/media3/ui/SubtitlePainter;->cuePosition:F

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    int-to-float v3, v5

    int-to-float v4, v4

    iget v5, v2, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    mul-float/2addr v5, v4

    add-float/2addr v5, v3

    iget v3, v2, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v3, v2, Landroidx/media3/ui/SubtitlePainter;->cueBitmapHeight:F

    const v7, -0x800001

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_2a

    goto :goto_18

    :cond_2a
    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v4, v0

    :goto_18
    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v3, v2, Landroidx/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    int-to-float v3, v1

    goto :goto_19

    :cond_2b
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    :goto_19
    sub-float/2addr v6, v3

    :cond_2c
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v2, Landroidx/media3/ui/SubtitlePainter;->cueLineAnchor:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2d

    int-to-float v4, v0

    goto :goto_1a

    :cond_2d
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2e

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    :goto_1a
    sub-float/2addr v5, v4

    :cond_2e
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v1, v3

    add-int/2addr v0, v4

    invoke-direct {v5, v3, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, v2, Landroidx/media3/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    :goto_1b
    move-object/from16 v0, p1

    move/from16 v1, v26

    :goto_1c
    invoke-virtual {v2, v0, v1}, Landroidx/media3/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    :goto_1d
    add-int/lit8 v13, v42, 0x1

    move-object v1, v0

    move/from16 v3, v23

    move/from16 v8, v24

    move-object/from16 v2, v35

    move/from16 v11, v36

    move/from16 v7, v37

    move/from16 v6, v38

    move/from16 v5, v39

    move/from16 v4, v40

    move/from16 v9, v41

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_2f
    :goto_1e
    return-void
.end method

.method public final update(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    iput-object p2, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    iput p3, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->textSize:F

    iput p4, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->textSizeType:I

    iput p5, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    :goto_0
    iget-object p2, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->painters:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    new-instance p3, Landroidx/media3/ui/SubtitlePainter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/media3/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
