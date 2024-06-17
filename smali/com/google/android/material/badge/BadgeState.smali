.class public final Lcom/google/android/material/badge/BadgeState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final badgeHeight:F

.field public final badgeRadius:F

.field public final badgeWidePadding:F

.field public final badgeWidth:F

.field public final badgeWithTextHeight:F

.field public final badgeWithTextRadius:F

.field public final badgeWithTextWidth:F

.field public final currentState:Lcom/google/android/material/badge/BadgeState$State;

.field public final horizontalInset:I

.field public final horizontalInsetWithText:I

.field public final offsetAlignmentMode:I

.field public final overridingState:Lcom/google/android/material/badge/BadgeState$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const v4, 0x7f040063

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {v1}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    new-instance v8, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {v8}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    iget v1, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    const-string v2, "badge"

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v9, :cond_1

    if-ne v5, v10, :cond_0

    :cond_1
    if-ne v5, v9, :cond_3

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    move-object v3, v1

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must have a <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> start tag"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t load badge resource ID #0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :cond_4
    const/4 v1, 0x0

    move-object v3, v1

    move v2, v11

    :goto_0
    if-nez v2, :cond_5

    const v1, 0x7f13048e

    move v5, v1

    goto :goto_1

    :cond_5
    move v5, v2

    :goto_1
    sget-object v6, Lcom/google/android/material/R$styleable;->Badge:[I

    new-array v12, v11, [I

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v6

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, v0, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    const v5, 0x7f070368

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/16 v6, 0x8

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, v0, Lcom/google/android/material/badge/BadgeState;->badgeWidePadding:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0x7f070367

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/badge/BadgeState;->horizontalInset:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0x7f07036a

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/badge/BadgeState;->horizontalInsetWithText:I

    const/16 v5, 0xb

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    const v5, 0x7f0701c8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    const/16 v13, 0x9

    invoke-virtual {v1, v13, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    iput v12, v0, Lcom/google/android/material/badge/BadgeState;->badgeWidth:F

    const v12, 0x7f0701cc

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    const/16 v15, 0xe

    invoke-virtual {v1, v15, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    iput v14, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextWidth:F

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v1, v9, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Lcom/google/android/material/badge/BadgeState;->badgeHeight:F

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/16 v5, 0xa

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextHeight:F

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState;->offsetAlignmentMode:I

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget v12, v8, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    const/4 v14, -0x2

    if-ne v12, v14, :cond_6

    const/16 v12, 0xff

    :cond_6
    iput v12, v2, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    iget-object v12, v8, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    if-nez v12, :cond_7

    const v12, 0x7f1202c0

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_7
    iput-object v12, v2, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget v12, v8, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    if-nez v12, :cond_8

    const v12, 0x7f100002

    :cond_8
    iput v12, v2, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    iget v12, v8, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    if-nez v12, :cond_9

    const v12, 0x7f1202cd

    :cond_9
    iput v12, v2, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    iget-object v12, v8, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_a

    goto :goto_2

    :cond_a
    move v12, v11

    goto :goto_3

    :cond_b
    :goto_2
    move v12, v10

    :goto_3
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v12, v2, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget v12, v8, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    const/4 v5, 0x4

    if-ne v12, v14, :cond_c

    const/16 v12, 0x11

    invoke-virtual {v1, v12, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    :cond_c
    iput v12, v2, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    iget v2, v8, Lcom/google/android/material/badge/BadgeState$State;->number:I

    if-eq v2, v14, :cond_d

    iget-object v4, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    goto :goto_4

    :cond_d
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v4, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :goto_4
    iput v2, v4, Lcom/google/android/material/badge/BadgeState$State;->number:I

    goto :goto_5

    :cond_e
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iput v4, v2, Lcom/google/android/material/badge/BadgeState$State;->number:I

    :goto_5
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v4, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    const v12, 0x7f1301f5

    if-nez v4, :cond_f

    invoke-virtual {v1, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_6

    :cond_f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v4, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    const/4 v14, 0x5

    if-nez v4, :cond_10

    invoke-virtual {v1, v14, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_7

    :cond_10
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v4, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    const/16 v13, 0xc

    if-nez v4, :cond_11

    invoke-virtual {v1, v13, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_8

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v4, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    if-nez v4, :cond_12

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_9

    :cond_12
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v4, v8, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    if-nez v4, :cond_13

    invoke-static {v7, v1, v11}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    goto :goto_a

    :cond_13
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v4, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    const/4 v12, 0x6

    if-nez v4, :cond_14

    const v4, 0x7f130292

    invoke-virtual {v1, v12, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_b

    :cond_14
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    iget-object v2, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_15

    iget-object v3, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    goto :goto_c

    :cond_15
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v3, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-static {v7, v1, v2}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_c
    iput-object v2, v3, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    goto :goto_e

    :cond_16
    iget-object v4, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v4, v4, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v6, Lcom/google/android/material/R$styleable;->TextAppearance:[I

    invoke-virtual {v7, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v2, 0x0

    invoke-virtual {v6, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    invoke-static {v7, v6, v3}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v7, v6, v5}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    invoke-static {v7, v6, v14}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    invoke-virtual {v6, v10, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_17

    move v5, v13

    goto :goto_d

    :cond_17
    const/16 v5, 0xa

    :goto_d
    invoke-virtual {v6, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {v6, v15, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    invoke-static {v7, v6, v12}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v5, 0x7

    invoke-virtual {v6, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    const/16 v5, 0x8

    invoke-virtual {v6, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    const/16 v5, 0x9

    invoke-virtual {v6, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v5, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    invoke-virtual {v7, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    invoke-virtual {v4, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    :goto_e
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    if-nez v3, :cond_18

    const v3, 0x800035

    invoke-virtual {v1, v10, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    goto :goto_f

    :cond_18
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    if-nez v3, :cond_19

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_10

    :cond_19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    if-nez v3, :cond_1a

    const/16 v3, 0x14

    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_11

    :cond_1a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    if-nez v3, :cond_1b

    iget-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_12

    :cond_1b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    if-nez v3, :cond_1c

    iget-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x15

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_13

    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    if-nez v3, :cond_1d

    move v3, v11

    goto :goto_14

    :cond_1d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    if-nez v3, :cond_1e

    goto :goto_15

    :cond_1e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_15
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, v8, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    if-nez v1, :cond_1f

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    sget-object v2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    goto :goto_16

    :cond_1f
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iput-object v1, v2, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    :goto_16
    iput-object v8, v0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    return-void
.end method


# virtual methods
.method public final hasNumber()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
