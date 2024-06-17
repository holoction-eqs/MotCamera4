.class public final Landroidx/media3/ui/DefaultTrackNameProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/ui/TrackNameProvider;


# instance fields
.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final buildBitrateString(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 1

    iget p1, p1, Landroidx/media3/common/Format;->bitrate:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    const v0, 0x7f12019d

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final buildLanguageOrLabelString(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, ""

    const/4 v5, 0x0

    if-nez v2, :cond_4

    const-string v2, "und"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v2, v6, :cond_1

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    :goto_0
    const/16 v6, 0x18

    if-lt v2, v6, :cond_2

    sget-object v2, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    :try_start_0
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_4
    :goto_2
    move-object v1, v4

    :catch_0
    :goto_3
    aput-object v1, v0, v5

    invoke-virtual {p0, p1}, Landroidx/media3/ui/DefaultTrackNameProvider;->buildRoleString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Landroidx/media3/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object v4, p0

    :goto_4
    move-object p0, v4

    :cond_6
    return-object p0
.end method

.method public final buildRoleString(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 3

    iget v0, p1, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroidx/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    const v0, 0x7f1201a0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget p1, p1, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_1

    const v2, 0x7f1201a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_2

    const v2, 0x7f1201a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    and-int/lit16 p1, p1, 0x440

    if-eqz p1, :cond_3

    const p1, 0x7f1201a1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public final getTrackName(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    iget v3, v1, Landroidx/media3/common/Format;->height:I

    iget v4, v1, Landroidx/media3/common/Format;->channelCount:I

    iget v5, v1, Landroidx/media3/common/Format;->width:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v2, v7, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string v2, "(\\s*,\\s*)"

    const/4 v10, 0x0

    iget-object v11, v1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-nez v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-array v12, v6, [Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    :goto_0
    array-length v13, v12

    move v14, v6

    :goto_1
    if-ge v14, v13, :cond_4

    aget-object v15, v12, v14

    invoke-static {v15}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-static {v15}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move-object v15, v10

    :goto_3
    if-eqz v15, :cond_5

    goto :goto_8

    :cond_5
    if-nez v11, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    new-array v2, v6, [Ljava/lang/String;

    goto :goto_4

    :cond_7
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    :goto_4
    array-length v11, v2

    move v12, v6

    :goto_5
    if-ge v12, v11, :cond_9

    aget-object v13, v2, v12

    invoke-static {v13}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-static {v13}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object v10, v13

    goto :goto_6

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    if-eqz v10, :cond_a

    goto :goto_7

    :cond_a
    if-ne v5, v7, :cond_e

    if-eq v3, v7, :cond_b

    goto :goto_8

    :cond_b
    if-ne v4, v7, :cond_d

    iget v2, v1, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v2, v7, :cond_c

    goto :goto_7

    :cond_c
    move v2, v7

    goto :goto_9

    :cond_d
    :goto_7
    move v2, v9

    goto :goto_9

    :cond_e
    :goto_8
    move v2, v8

    :goto_9
    const-string v10, ""

    const/4 v11, 0x3

    iget-object v12, v0, Landroidx/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    if-ne v2, v8, :cond_11

    new-array v2, v11, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/ui/DefaultTrackNameProvider;->buildRoleString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    if-eq v5, v7, :cond_10

    if-ne v3, v7, :cond_f

    goto :goto_a

    :cond_f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f12019f

    invoke-virtual {v12, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :cond_10
    :goto_a
    aput-object v10, v2, v9

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/ui/DefaultTrackNameProvider;->buildBitrateString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v8

    invoke-virtual {v0, v2}, Landroidx/media3/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_11
    if-ne v2, v9, :cond_18

    new-array v2, v11, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/ui/DefaultTrackNameProvider;->buildLanguageOrLabelString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    if-eq v4, v7, :cond_17

    if-ge v4, v9, :cond_12

    goto :goto_c

    :cond_12
    if-eq v4, v9, :cond_16

    if-eq v4, v8, :cond_15

    const/4 v3, 0x6

    if-eq v4, v3, :cond_14

    const/4 v3, 0x7

    if-eq v4, v3, :cond_14

    const/16 v3, 0x8

    if-eq v4, v3, :cond_13

    const v3, 0x7f1201aa

    goto :goto_b

    :cond_13
    const v3, 0x7f1201ac

    goto :goto_b

    :cond_14
    const v3, 0x7f1201ab

    goto :goto_b

    :cond_15
    const v3, 0x7f1201a9

    goto :goto_b

    :cond_16
    const v3, 0x7f12019e

    :goto_b
    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_17
    :goto_c
    aput-object v10, v2, v9

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/ui/DefaultTrackNameProvider;->buildBitrateString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v8

    invoke-virtual {v0, v2}, Landroidx/media3/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_18
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/ui/DefaultTrackNameProvider;->buildLanguageOrLabelString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    const v0, 0x7f1201ad

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_19
    return-object v0
.end method

.method public final varargs joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Landroidx/media3/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    const v4, 0x7f12019c

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
