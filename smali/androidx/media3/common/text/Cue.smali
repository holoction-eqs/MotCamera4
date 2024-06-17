.class public final Landroidx/media3/common/text/Cue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

.field public static final EMPTY:Landroidx/media3/common/text/Cue;

.field public static final FIELD_BITMAP:Ljava/lang/String;

.field public static final FIELD_BITMAP_HEIGHT:Ljava/lang/String;

.field public static final FIELD_LINE:Ljava/lang/String;

.field public static final FIELD_LINE_ANCHOR:Ljava/lang/String;

.field public static final FIELD_LINE_TYPE:Ljava/lang/String;

.field public static final FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

.field public static final FIELD_POSITION:Ljava/lang/String;

.field public static final FIELD_POSITION_ANCHOR:Ljava/lang/String;

.field public static final FIELD_SHEAR_DEGREES:Ljava/lang/String;

.field public static final FIELD_SIZE:Ljava/lang/String;

.field public static final FIELD_TEXT:Ljava/lang/String;

.field public static final FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

.field public static final FIELD_TEXT_SIZE:Ljava/lang/String;

.field public static final FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

.field public static final FIELD_VERTICAL_TYPE:Ljava/lang/String;

.field public static final FIELD_WINDOW_COLOR:Ljava/lang/String;

.field public static final FIELD_WINDOW_COLOR_SET:Ljava/lang/String;


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final bitmapHeight:F

.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final multiRowAlignment:Landroid/text/Layout$Alignment;

.field public final position:F

.field public final positionAnchor:I

.field public final shearDegrees:F

.field public final size:F

.field public final text:Ljava/lang/CharSequence;

.field public final textAlignment:Landroid/text/Layout$Alignment;

.field public final textSize:F

.field public final textSizeType:I

.field public final verticalType:I

.field public final windowColor:I

.field public final windowColorSet:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    const/16 v17, 0x0

    const/4 v4, 0x0

    move-object v2, v4

    move-object v3, v4

    const v13, -0x800001

    move v8, v13

    move v5, v13

    move v11, v13

    move v12, v13

    const/high16 v6, -0x80000000

    move/from16 v16, v6

    move v7, v6

    move v9, v6

    move v10, v6

    const/4 v14, 0x0

    const/high16 v15, -0x1000000

    const-string v1, ""

    new-instance v18, Landroidx/media3/common/text/Cue;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    sput-object v18, Landroidx/media3/common/text/Cue;->EMPTY:Landroidx/media3/common/text/Cue;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_BITMAP:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    new-instance v1, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v1, Landroidx/media3/common/text/Cue;->CREATOR:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez v1, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    :goto_1
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-object v1, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    move-object v1, p2

    iput-object v1, v0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    move-object v1, p3

    iput-object v1, v0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iput-object v2, v0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    move v1, p5

    iput v1, v0, Landroidx/media3/common/text/Cue;->line:F

    move v1, p6

    iput v1, v0, Landroidx/media3/common/text/Cue;->lineType:I

    move v1, p7

    iput v1, v0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    move v1, p8

    iput v1, v0, Landroidx/media3/common/text/Cue;->position:F

    move v1, p9

    iput v1, v0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    move/from16 v1, p12

    iput v1, v0, Landroidx/media3/common/text/Cue;->size:F

    move/from16 v1, p13

    iput v1, v0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    move/from16 v1, p14

    iput-boolean v1, v0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    move/from16 v1, p15

    iput v1, v0, Landroidx/media3/common/text/Cue;->windowColor:I

    move v1, p10

    iput v1, v0, Landroidx/media3/common/text/Cue;->textSizeType:I

    move v1, p11

    iput v1, v0, Landroidx/media3/common/text/Cue;->textSize:F

    move/from16 v1, p16

    iput v1, v0, Landroidx/media3/common/text/Cue;->verticalType:I

    move/from16 v1, p17

    iput v1, v0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Landroidx/media3/common/text/Cue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Landroidx/media3/common/text/Cue;

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iget v2, p0, Landroidx/media3/common/text/Cue;->line:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->line:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->lineType:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->lineType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->lineAnchor:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->position:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->position:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->positionAnchor:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->size:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->size:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    iget-boolean v3, p1, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->windowColor:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->windowColor:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->textSizeType:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->textSizeType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->textSize:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->textSize:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->verticalType:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    iget p1, p1, Landroidx/media3/common/text/Cue;->shearDegrees:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, v0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iget v5, v0, Landroidx/media3/common/text/Cue;->line:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v6, v0, Landroidx/media3/common/text/Cue;->lineType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v0, Landroidx/media3/common/text/Cue;->position:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget v9, v0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v0, Landroidx/media3/common/text/Cue;->size:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget v11, v0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget-boolean v12, v0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget v13, v0, Landroidx/media3/common/text/Cue;->windowColor:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v0, Landroidx/media3/common/text/Cue;->textSizeType:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v0, Landroidx/media3/common/text/Cue;->textSize:F

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v18, v1

    iget v1, v0, Landroidx/media3/common/text/Cue;->verticalType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v0, v0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v1, v18

    filled-new-array/range {v1 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
