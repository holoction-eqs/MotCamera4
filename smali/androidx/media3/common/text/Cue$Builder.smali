.class public final Landroidx/media3/common/text/Cue$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public bitmapHeight:F

.field public line:F

.field public lineAnchor:I

.field public lineType:I

.field public multiRowAlignment:Landroid/text/Layout$Alignment;

.field public position:F

.field public positionAnchor:I

.field public shearDegrees:F

.field public size:F

.field public text:Ljava/lang/CharSequence;

.field public textAlignment:Landroid/text/Layout$Alignment;

.field public textSize:F

.field public textSizeType:I

.field public verticalType:I

.field public windowColor:I

.field public windowColorSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->line:F

    const/high16 v1, -0x80000000

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->position:F

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->size:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    iput v1, p0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/text/Cue;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p1, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v0, p1, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget v0, p1, Landroidx/media3/common/text/Cue;->line:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->line:F

    iget v0, p1, Landroidx/media3/common/text/Cue;->lineType:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    iget v0, p1, Landroidx/media3/common/text/Cue;->lineAnchor:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    iget v0, p1, Landroidx/media3/common/text/Cue;->position:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->position:F

    iget v0, p1, Landroidx/media3/common/text/Cue;->positionAnchor:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    iget v0, p1, Landroidx/media3/common/text/Cue;->textSizeType:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    iget v0, p1, Landroidx/media3/common/text/Cue;->textSize:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    iget v0, p1, Landroidx/media3/common/text/Cue;->size:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->size:F

    iget v0, p1, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    iget-boolean v0, p1, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    iput-boolean v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    iget v0, p1, Landroidx/media3/common/text/Cue;->windowColor:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    iget v0, p1, Landroidx/media3/common/text/Cue;->verticalType:I

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    iget p1, p1, Landroidx/media3/common/text/Cue;->shearDegrees:F

    iput p1, p0, Landroidx/media3/common/text/Cue$Builder;->shearDegrees:F

    return-void
.end method


# virtual methods
.method public final build()Landroidx/media3/common/text/Cue;
    .locals 21

    move-object/from16 v0, p0

    new-instance v19, Landroidx/media3/common/text/Cue;

    move-object/from16 v1, v19

    iget-object v2, v0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroidx/media3/common/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Landroidx/media3/common/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Landroidx/media3/common/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    iget v6, v0, Landroidx/media3/common/text/Cue$Builder;->line:F

    iget v7, v0, Landroidx/media3/common/text/Cue$Builder;->lineType:I

    iget v8, v0, Landroidx/media3/common/text/Cue$Builder;->lineAnchor:I

    iget v9, v0, Landroidx/media3/common/text/Cue$Builder;->position:F

    iget v10, v0, Landroidx/media3/common/text/Cue$Builder;->positionAnchor:I

    iget v11, v0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    iget v12, v0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    iget v13, v0, Landroidx/media3/common/text/Cue$Builder;->size:F

    iget v14, v0, Landroidx/media3/common/text/Cue$Builder;->bitmapHeight:F

    iget-boolean v15, v0, Landroidx/media3/common/text/Cue$Builder;->windowColorSet:Z

    move-object/from16 v20, v1

    iget v1, v0, Landroidx/media3/common/text/Cue$Builder;->windowColor:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media3/common/text/Cue$Builder;->verticalType:I

    move/from16 v17, v1

    iget v0, v0, Landroidx/media3/common/text/Cue$Builder;->shearDegrees:F

    move/from16 v18, v0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-object v19
.end method
