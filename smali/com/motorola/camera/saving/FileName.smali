.class public Lcom/motorola/camera/saving/FileName;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final EXT_AI_IMAGE_STABILIZATION:Ljava/lang/String; = "_IS"

.field public static final EXT_AI_LOW_LIGHT_SELFIE:Ljava/lang/String; = "_AI"

.field private static final EXT_ALTM:Ljava/lang/String; = "_ALT"

.field public static final EXT_AUTO_ENHANCE:Ljava/lang/String; = "_AE"

.field public static final EXT_CAPTURE_THUMB:Ljava/lang/String; = "_CAPTURE_THUMB"

.field public static final EXT_DEBUG_SLOW_MOTION:Ljava/lang/String; = "_SM"

.field private static final EXT_DEPTH:Ljava/lang/String; = "_DEPTH"

.field private static final EXT_DEPTH_MAP:Ljava/lang/String; = "_MAP"

.field private static final EXT_DIS:Ljava/lang/String; = "_DIS"

.field private static final EXT_DISPLAY_FLASH:Ljava/lang/String; = "_DF"

.field public static final EXT_DOC:Ljava/lang/String; = "_DOC"

.field private static final EXT_DUP:Ljava/lang/String; = "_DUP"

.field public static final EXT_HDR:Ljava/lang/String; = "_HDR"

.field private static final EXT_HYPERLAPSE:Ljava/lang/String; = "_HL"

.field public static final EXT_LAYER:Ljava/lang/String; = "_LAYER"

.field private static final EXT_LL:Ljava/lang/String; = "_LL"

.field private static final EXT_MFNR:Ljava/lang/String; = "_MFNR"

.field private static final EXT_MOTION_PHOTOS:Ljava/lang/String; = "_MP"

.field public static final EXT_MULTI_FRAME:Ljava/lang/String; = "_MF"

.field private static final EXT_NV:Ljava/lang/String; = "_NV"

.field public static final EXT_PORTRAIT:Ljava/lang/String; = "_PORTRAIT"

.field private static final EXT_PREVIEW_DUMP:Ljava/lang/String; = "_PREVIEW"

.field private static final EXT_SR:Ljava/lang/String; = "_SR"

.field private static final EXT_SUPER_REMOSAIC:Ljava/lang/String; = "_SRRM"

.field private static final FORMAT:Ljava/lang/String; = "yyyyMMdd_HHmmssSSS"

.field private static final MAX_FILE_NAME_LENGTH:I = 0x80

.field public static final PREFIX_CINEMAGRAPH:Ljava/lang/String; = "CMGPH_"

.field public static final PREFIX_IMAGE:Ljava/lang/String; = "IMG_"

.field public static final PREFIX_TEMPORARY:Ljava/lang/String; = "TEMP_"

.field public static final PREFIX_THUMBNAIL:Ljava/lang/String; = "THUMBNAIL_"

.field public static final PREFIX_VIDEO:Ljava/lang/String; = "VID_"


# instance fields
.field private mAttributes:I

.field private final mDate:J

.field private mExtension:Ljava/lang/String;

.field private mFileNumber:I

.field private mPrefix:Ljava/lang/String;

.field private final transient mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mSuffix:Ljava/lang/String;

.field private mType:Lcom/motorola/camera/ShotType;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ShotType;J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyyMMdd_HHmmssSSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    iput-wide p2, p0, Lcom/motorola/camera/saving/FileName;->mDate:J

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/saving/FileName;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyyMMdd_HHmmssSSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v0, p1, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    iget-wide v0, p1, Lcom/motorola/camera/saving/FileName;->mDate:J

    iput-wide v0, p0, Lcom/motorola/camera/saving/FileName;->mDate:J

    iget-object v0, p1, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    iget-object v0, p1, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    iget-object v0, p1, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    iget p1, p1, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    iput p1, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    return-void
.end method

.method private appendFileNumber(Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-static {}, Landroid/icu/text/NumberFormat;->getIntegerInstance()Landroid/icu/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/saving/FileName;->mFileNumber:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private createPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    return-object p0

    :cond_0
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "TEMP_"

    return-object p0

    :cond_1
    const/high16 v0, 0x20000000

    invoke-direct {p0, v0}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "THUMBNAIL_"

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v0}, Lcom/motorola/camera/ShotType;->isCinemaGraph()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "CMGPH_"

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    invoke-virtual {p0}, Lcom/motorola/camera/ShotType;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "VID_"

    goto :goto_0

    :cond_4
    const-string p0, "IMG_"

    :goto_0
    return-object p0
.end method

.method private hasAttribute(I)Z
    .locals 0

    iget p0, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createExtension()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, ".mp4"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const-string p0, ".jpg"

    return-object p0

    :cond_1
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v2

    :cond_2
    const-string p0, ".gif"

    return-object p0

    :cond_3
    const-string p0, ".dng"

    return-object p0

    :cond_4
    return-object v2
.end method

.method public extension(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    return-object p0
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-wide v2, p0, Lcom/motorola/camera/saving/FileName;->mDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/camera/saving/FileName;->createPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->createExtension()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getNameNoExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->createExtension()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameNoExtension()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    sget-object v3, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/motorola/camera/saving/FileName;->mFileNumber:I

    if-le v2, v4, :cond_0

    invoke-direct {p0, v0}, Lcom/motorola/camera/saving/FileName;->appendFileNumber(Ljava/lang/StringBuilder;)V

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x200

    const/4 v5, 0x2

    const-string v6, "_MFNR"

    const/high16 v7, 0x20000

    const-string v8, "_HDR"

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_1
    const/16 v2, 0x4000

    invoke-direct {p0, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "_HL"

    goto :goto_0

    :cond_2
    const/high16 v2, 0x1000000

    invoke-direct {p0, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    const/16 v9, 0x20

    if-eqz v2, :cond_5

    invoke-direct {p0, v9}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    sget-boolean v1, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, v7}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    const-string v1, "_AI"

    goto :goto_0

    :cond_5
    const/high16 v2, 0x8000000

    invoke-direct {p0, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v9}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    sget-boolean v1, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v1, :cond_7

    invoke-direct {p0, v7}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    const-string v1, "_IS"

    goto :goto_0

    :cond_8
    sget-boolean v2, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v2, :cond_9

    const/16 v10, 0x400

    invoke-direct {p0, v10}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v1, "_SR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_3

    :cond_9
    invoke-direct {p0, v9}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v9

    if-eqz v9, :cond_a

    :goto_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_a
    invoke-direct {p0, v5}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    const-string v2, "_DEPTH"

    if-eqz v1, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_MAP"

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, v3}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, 0x100

    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "_LAYER"

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_d
    if-eqz v2, :cond_e

    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "_LL"

    goto/16 :goto_0

    :cond_e
    if-eqz v2, :cond_f

    invoke-direct {p0, v7}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_f
    if-eqz v2, :cond_10

    const/high16 v1, 0x10000

    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "_NV"

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "_DUP"

    goto/16 :goto_0

    :cond_11
    if-eqz v2, :cond_12

    invoke-direct {p0, v4}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "_ALT"

    goto/16 :goto_0

    :cond_12
    if-eqz v2, :cond_13

    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "_DF"

    goto/16 :goto_0

    :cond_13
    if-eqz v2, :cond_14

    const/high16 v1, 0x400000

    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "_SRRM"

    goto/16 :goto_0

    :cond_14
    if-eqz v2, :cond_15

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "_DIS"

    goto/16 :goto_0

    :cond_15
    :goto_4
    const/high16 v1, 0x100000

    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "_PREVIEW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const/high16 v1, 0x2000000

    invoke-direct {p0, v1}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "_DOC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    sget-boolean v1, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v1, :cond_18

    const/high16 v2, 0x4000000

    invoke-direct {p0, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "_SM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    const/16 v2, 0x1000

    invoke-direct {p0, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "_MP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const/high16 v2, 0x10000000

    invoke-direct {p0, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "_AE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-direct {p0, v3}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/high16 v2, 0x80000

    invoke-direct {p0, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_1b
    const/high16 v2, 0x800000

    invoke-direct {p0, v2}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "_MF"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    :goto_5
    if-eqz v1, :cond_1d

    invoke-direct {p0, v5}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-direct {p0, v7}, Lcom/motorola/camera/saving/FileName;->hasAttribute(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const-string p0, "_PORTRAIT"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeAttribute(I)Lcom/motorola/camera/saving/FileName;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    return-object p0
.end method

.method public setAttribute(I)Lcom/motorola/camera/saving/FileName;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    return-object p0
.end method

.method public setFileNumber(I)Lcom/motorola/camera/saving/FileName;
    .locals 0

    iput p1, p0, Lcom/motorola/camera/saving/FileName;->mFileNumber:I

    return-object p0
.end method

.method public setInstanceTypeAttributes(Lcom/motorola/camera/mcf/Mcf$InstanceType;)Lcom/motorola/camera/saving/FileName;
    .locals 6

    sget-object v0, Lcom/motorola/camera/saving/FileName$1;->$SwitchMap$com$motorola$camera$mcf$Mcf$InstanceType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/high16 v0, 0x8000000

    const/high16 v1, 0x400000

    const/16 v2, 0x400

    const/high16 v3, 0x1000000

    const/high16 v4, 0x20000

    const/16 v5, 0x20

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_3

    :pswitch_4
    const/high16 p1, 0x800000

    goto :goto_1

    :pswitch_5
    const/high16 p1, 0x80000

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, v2}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_3

    :pswitch_8
    const/high16 p1, 0x10000

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v4}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_3

    :pswitch_a
    invoke-virtual {p0, v4}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_3

    :pswitch_b
    const/high16 p1, 0x200000

    goto :goto_1

    :pswitch_c
    invoke-virtual {p0, v5}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    :pswitch_d
    const/16 p1, 0x80

    :goto_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_3

    :goto_2
    :pswitch_e
    invoke-virtual {p0, v5}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setType(Lcom/motorola/camera/ShotType;)Lcom/motorola/camera/saving/FileName;
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    return-object p0
.end method

.method public suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FileName{mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/saving/FileName;->mDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/saving/FileName;->mAttributes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExtension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/FileName;->mExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
