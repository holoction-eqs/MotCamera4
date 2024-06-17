.class public abstract Landroidx/core/content/res/ColorStateListInflaterCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sTempTypedValue:Ljava/lang/ThreadLocal;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    invoke-static {p0, p1, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "selector"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0x14

    new-array v6, v5, [[I

    new-array v5, v5, [I

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v4, :cond_2a

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    const/4 v11, 0x3

    if-ge v10, v3, :cond_0

    if-eq v9, v11, :cond_2a

    :cond_0
    const/4 v12, 0x2

    if-ne v9, v12, :cond_29

    if-gt v10, v3, :cond_29

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_21

    :cond_1
    sget-object v9, Landroidx/core/R$styleable;->ColorStateListItem:[I

    if-nez v2, :cond_2

    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    :goto_1
    const/4 v10, -0x1

    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    if-eq v13, v10, :cond_5

    sget-object v14, Landroidx/core/content/res/ColorStateListInflaterCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/TypedValue;

    if-nez v15, :cond_3

    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v0, v13, v15, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v14, v15, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x1c

    if-lt v14, v15, :cond_4

    const/16 v15, 0x1f

    if-gt v14, v15, :cond_4

    move v14, v4

    goto :goto_2

    :cond_4
    move v14, v7

    :goto_2
    if-nez v14, :cond_5

    :try_start_0
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    invoke-static {v0, v13, v2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :cond_5
    const v13, -0xff01

    invoke-virtual {v9, v7, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    :goto_3
    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v14, :cond_6

    invoke-virtual {v9, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    goto :goto_4

    :cond_6
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v9, v11, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    goto :goto_4

    :cond_7
    move v11, v15

    :goto_4
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    const/4 v10, 0x4

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v14, :cond_8

    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    goto :goto_5

    :cond_8
    invoke-virtual {v9, v10, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    :goto_5
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    new-array v14, v9, [I

    move v10, v7

    move v12, v10

    :goto_6
    if-ge v10, v9, :cond_b

    invoke-interface {v1, v10}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v15

    const v7, 0x10101a5

    if-eq v15, v7, :cond_a

    const v7, 0x101031f

    if-eq v15, v7, :cond_a

    const v7, 0x7f040037

    if-eq v15, v7, :cond_a

    const v7, 0x7f040299

    if-eq v15, v7, :cond_a

    add-int/lit8 v7, v12, 0x1

    const/4 v0, 0x0

    invoke-interface {v1, v10, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v18

    if-eqz v18, :cond_9

    goto :goto_7

    :cond_9
    neg-int v15, v15

    :goto_7
    aput v15, v14, v12

    move v12, v7

    :cond_a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    const/4 v7, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_b
    invoke-static {v14, v12}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v0

    const/4 v7, 0x0

    cmpl-float v9, v4, v7

    const/high16 v10, 0x42c80000    # 100.0f

    if-ltz v9, :cond_c

    cmpg-float v9, v4, v10

    if-gtz v9, :cond_c

    const/4 v9, 0x1

    goto :goto_8

    :cond_c
    const/4 v9, 0x0

    :goto_8
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v14, v11, v12

    if-nez v14, :cond_d

    if-nez v9, :cond_d

    move/from16 v21, v3

    move-object v9, v6

    const/4 v4, 0x1

    move-object v3, v0

    goto/16 :goto_1d

    :cond_d
    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v12, v11

    float-to-int v11, v12

    const/16 v12, 0xff

    const/4 v14, 0x0

    invoke-static {v11, v14, v12}, Lkotlin/reflect/TypesJVMKt;->clamp(III)I

    move-result v11

    if-eqz v9, :cond_24

    invoke-static {v13}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    move-result-object v9

    sget-object v12, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    iget v13, v9, Landroidx/core/content/res/CamColor;->mChroma:F

    float-to-double v14, v13

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v14, v18

    const v18, 0x4461d2f7

    const/high16 v19, 0x42e80000    # 116.0f

    const/high16 v20, 0x41800000    # 16.0f

    if-ltz v14, :cond_1c

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v14

    move/from16 v22, v11

    int-to-double v10, v14

    const-wide/16 v23, 0x0

    cmpg-double v10, v10, v23

    if-lez v10, :cond_1b

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v23, 0x4059000000000000L    # 100.0

    cmpl-double v10, v10, v23

    if-ltz v10, :cond_e

    goto/16 :goto_13

    :cond_e
    iget v9, v9, Landroidx/core/content/res/CamColor;->mHue:F

    cmpg-float v10, v9, v7

    if-gez v10, :cond_f

    move v9, v7

    goto :goto_9

    :cond_f
    const/high16 v10, 0x43b40000    # 360.0f

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    :goto_9
    move/from16 v23, v7

    move v11, v13

    const/4 v10, 0x0

    const/4 v14, 0x1

    :goto_a
    sub-float v25, v23, v13

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const v26, 0x3ecccccd    # 0.4f

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_19

    const/high16 v25, 0x447a0000    # 1000.0f

    move/from16 v27, v7

    move/from16 v26, v25

    const/high16 v28, 0x42c80000    # 100.0f

    const/16 v29, 0x0

    :goto_b
    sub-float v30, v27, v28

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v30

    const v31, 0x3c23d70a    # 0.01f

    cmpl-float v30, v30, v31

    const/high16 v31, 0x40000000    # 2.0f

    if-lez v30, :cond_15

    sub-float v30, v28, v27

    div-float v30, v30, v31

    add-float v7, v30, v27

    invoke-static {v7, v11, v9}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v15

    sget-object v1, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-virtual {v15, v1}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v15

    invoke-static {v15}, Lcom/adobe/xmp/XMPUtils;->linearized(I)F

    move-result v15

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v32

    invoke-static/range {v32 .. v32}, Lcom/adobe/xmp/XMPUtils;->linearized(I)F

    move-result v32

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v33

    invoke-static/range {v33 .. v33}, Lcom/adobe/xmp/XMPUtils;->linearized(I)F

    move-result v33

    sget-object v34, Lcom/adobe/xmp/XMPUtils;->SRGB_TO_XYZ:[[F

    const/16 v16, 0x1

    aget-object v34, v34, v16

    const/16 v17, 0x0

    aget v35, v34, v17

    mul-float v15, v15, v35

    aget v35, v34, v16

    mul-float v32, v32, v35

    add-float v32, v32, v15

    const/4 v15, 0x2

    aget v34, v34, v15

    mul-float v33, v33, v34

    add-float v33, v33, v32

    const/high16 v15, 0x42c80000    # 100.0f

    div-float v2, v33, v15

    const v21, 0x3c111aa7

    cmpg-float v32, v2, v21

    if-gtz v32, :cond_10

    mul-float v2, v2, v18

    move/from16 v21, v3

    goto :goto_c

    :cond_10
    move/from16 v21, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v19

    sub-float v2, v2, v20

    :goto_c
    sub-float v3, v4, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v32, 0x3e4ccccd    # 0.2f

    cmpg-float v32, v3, v32

    if-gez v32, :cond_11

    invoke-static {v1}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    move-result-object v1

    iget v15, v1, Landroidx/core/content/res/CamColor;->mJ:F

    move/from16 v33, v3

    iget v3, v1, Landroidx/core/content/res/CamColor;->mChroma:F

    invoke-static {v15, v3, v9}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v3

    iget v15, v3, Landroidx/core/content/res/CamColor;->mJstar:F

    move/from16 v34, v7

    iget v7, v1, Landroidx/core/content/res/CamColor;->mJstar:F

    sub-float/2addr v7, v15

    iget v15, v1, Landroidx/core/content/res/CamColor;->mAstar:F

    move/from16 v35, v9

    iget v9, v3, Landroidx/core/content/res/CamColor;->mAstar:F

    sub-float/2addr v15, v9

    iget v9, v1, Landroidx/core/content/res/CamColor;->mBstar:F

    iget v3, v3, Landroidx/core/content/res/CamColor;->mBstar:F

    sub-float/2addr v9, v3

    mul-float/2addr v7, v7

    mul-float/2addr v15, v15

    add-float/2addr v15, v7

    mul-float/2addr v9, v9

    add-float/2addr v9, v15

    move-object v3, v0

    move-object v7, v1

    float-to-double v0, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    move-object v9, v6

    move-object v15, v7

    const-wide v6, 0x3fe428f5c28f5c29L    # 0.63

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v6, 0x3ff68f5c28f5c28fL    # 1.41

    mul-double/2addr v0, v6

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v6, v0, v1

    if-gtz v6, :cond_12

    move/from16 v26, v0

    move-object/from16 v29, v15

    move/from16 v25, v33

    goto :goto_d

    :cond_11
    move-object v3, v0

    move/from16 v34, v7

    move/from16 v35, v9

    move-object v9, v6

    :cond_12
    :goto_d
    const/4 v0, 0x0

    cmpl-float v1, v25, v0

    if-nez v1, :cond_13

    cmpl-float v1, v26, v0

    if-nez v1, :cond_13

    goto :goto_f

    :cond_13
    cmpg-float v1, v2, v4

    if-gez v1, :cond_14

    move/from16 v27, v34

    goto :goto_e

    :cond_14
    move/from16 v28, v34

    :goto_e
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v7, v0

    move-object v0, v3

    move-object v6, v9

    move/from16 v3, v21

    move/from16 v9, v35

    goto/16 :goto_b

    :cond_15
    move/from16 v21, v3

    move/from16 v35, v9

    move-object v3, v0

    move-object v9, v6

    move v0, v7

    :goto_f
    move-object/from16 v1, v29

    if-eqz v14, :cond_17

    if-eqz v1, :cond_16

    invoke-virtual {v1, v12}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result v13

    goto :goto_12

    :cond_16
    sub-float v1, v13, v23

    div-float v1, v1, v31

    add-float v1, v1, v23

    move v11, v1

    const/4 v14, 0x0

    goto :goto_11

    :cond_17
    if-nez v1, :cond_18

    move v13, v11

    move/from16 v11, v23

    goto :goto_10

    :cond_18
    move-object v10, v1

    :goto_10
    sub-float v1, v13, v11

    div-float v1, v1, v31

    add-float/2addr v1, v11

    move/from16 v23, v11

    move v11, v1

    :goto_11
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v7, v0

    move-object v0, v3

    move-object v6, v9

    move/from16 v3, v21

    move/from16 v9, v35

    goto/16 :goto_a

    :cond_19
    move/from16 v21, v3

    move-object v9, v6

    move-object v3, v0

    if-nez v10, :cond_1a

    goto :goto_15

    :cond_1a
    invoke-virtual {v10, v12}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result v13

    :goto_12
    const/4 v4, 0x1

    goto/16 :goto_1c

    :cond_1b
    :goto_13
    move/from16 v21, v3

    move-object v9, v6

    goto :goto_14

    :cond_1c
    move/from16 v21, v3

    move-object v9, v6

    move/from16 v22, v11

    :goto_14
    move-object v3, v0

    :goto_15
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_1d

    const/high16 v10, -0x1000000

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1d
    const/high16 v0, 0x42c60000    # 99.0f

    cmpl-float v0, v4, v0

    if-lez v0, :cond_1e

    const/4 v4, 0x1

    const/4 v10, -0x1

    goto :goto_1b

    :cond_1e
    add-float v0, v4, v20

    div-float v0, v0, v19

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v1, v4, v1

    if-lez v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_16

    :cond_1f
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_20

    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    goto :goto_17

    :cond_20
    div-float v1, v4, v18

    :goto_17
    mul-float v2, v0, v0

    mul-float/2addr v2, v0

    const v4, 0x3c111aa7

    cmpl-float v4, v2, v4

    if-lez v4, :cond_21

    const/4 v4, 0x1

    goto :goto_18

    :cond_21
    const/4 v4, 0x0

    :goto_18
    if-eqz v4, :cond_22

    move v6, v2

    goto :goto_19

    :cond_22
    mul-float v6, v0, v19

    sub-float v6, v6, v20

    div-float v6, v6, v18

    :goto_19
    if-eqz v4, :cond_23

    goto :goto_1a

    :cond_23
    mul-float v0, v0, v19

    sub-float v0, v0, v20

    div-float v2, v0, v18

    :goto_1a
    sget-object v0, Lcom/adobe/xmp/XMPUtils;->WHITE_POINT_D65:[F

    const/4 v4, 0x0

    aget v7, v0, v4

    mul-float/2addr v6, v7

    float-to-double v10, v6

    const/4 v4, 0x1

    aget v6, v0, v4

    mul-float/2addr v1, v6

    float-to-double v12, v1

    const/4 v1, 0x2

    aget v0, v0, v1

    mul-float/2addr v2, v0

    float-to-double v14, v2

    invoke-static/range {v10 .. v15}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v10

    :goto_1b
    move v13, v10

    goto :goto_1c

    :cond_24
    move/from16 v21, v3

    move-object v9, v6

    move/from16 v22, v11

    const/4 v4, 0x1

    move-object v3, v0

    :goto_1c
    const v0, 0xffffff

    and-int/2addr v0, v13

    shl-int/lit8 v1, v22, 0x18

    or-int v13, v0, v1

    :goto_1d
    add-int/lit8 v0, v8, 0x1

    array-length v1, v5

    const/16 v2, 0x8

    if-le v0, v1, :cond_26

    const/4 v1, 0x4

    if-gt v8, v1, :cond_25

    move v1, v2

    goto :goto_1e

    :cond_25
    mul-int/lit8 v1, v8, 0x2

    :goto_1e
    new-array v1, v1, [I

    const/4 v6, 0x0

    invoke-static {v5, v6, v1, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v1

    :cond_26
    aput v13, v5, v8

    array-length v1, v9

    if-le v0, v1, :cond_28

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const/4 v6, 0x4

    if-gt v8, v6, :cond_27

    goto :goto_1f

    :cond_27
    mul-int/lit8 v2, v8, 0x2

    :goto_1f
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v9, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v1

    goto :goto_20

    :cond_28
    move-object v6, v9

    :goto_20
    aput-object v3, v6, v8

    check-cast v6, [[I

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v8, v0

    move/from16 v3, v21

    const/4 v7, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_29
    :goto_21
    move/from16 v21, v3

    move-object v9, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v6, v9

    move/from16 v3, v21

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_2a
    move-object v9, v6

    new-array v0, v8, [I

    new-array v1, v8, [[I

    const/4 v2, 0x0

    invoke-static {v5, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    :cond_2b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid color state list tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
