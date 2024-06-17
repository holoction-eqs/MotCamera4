.class public final Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LEAST_IMPORTANT_FIRST:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;


# instance fields
.field public final cue:Landroidx/media3/common/text/Cue;

.field public final priority:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->LEAST_IMPORTANT_FIRST:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Landroid/text/SpannableStringBuilder;Landroid/text/Layout$Alignment;FIFIZII)V
    .locals 20

    move-object/from16 v0, p0

    const/4 v7, 0x0

    const v13, -0x800001

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v18, 0x0

    const/4 v5, 0x0

    const v14, -0x800001

    const/high16 v17, -0x80000000

    if-eqz p7, :cond_0

    const/4 v1, 0x1

    move/from16 v16, p8

    move v15, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    move v15, v1

    move/from16 v16, v2

    :goto_0
    new-instance v12, Landroidx/media3/common/text/Cue;

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v5

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, v17

    move-object/from16 v19, v12

    move v12, v14

    invoke-direct/range {v1 .. v18}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    move-object/from16 v1, v19

    iput-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->cue:Landroidx/media3/common/text/Cue;

    move/from16 v1, p9

    iput v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    return-void
.end method
