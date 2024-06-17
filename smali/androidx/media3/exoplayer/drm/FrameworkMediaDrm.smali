.class public final Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/drm/ExoMediaDrm;


# static fields
.field public static final DEFAULT_PROVIDER:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;


# instance fields
.field public final mediaDrm:Landroid/media/MediaDrm;

.field public referenceCount:I

.field public final uuid:Ljava/util/UUID;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Use C.CLEARKEY_UUID instead"

    invoke-static {v3, v1}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Ljava/lang/String;Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    new-instance v1, Landroid/media/MediaDrm;

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x1b

    if-ge v3, v4, :cond_0

    sget-object v3, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {v1, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    iput v2, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->referenceCount:I

    sget-object p0, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "ASUS_Z00AD"

    sget-object p1, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "securityLevel"

    const-string p1, "L3"

    invoke-virtual {v1, p0, p1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final closeSession([B)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    return-void
.end method

.method public final createCryptoConfig([B)Landroidx/media3/decoder/CryptoConfig;
    .locals 4

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    if-ge v0, v1, :cond_0

    sget-object v1, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    const-string v1, "securityLevel"

    invoke-virtual {p0, v1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "L3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v1, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    const/16 v3, 0x1b

    if-ge v0, v3, :cond_1

    sget-object v0, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v2, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    :cond_1
    invoke-direct {v1, v2, p1, p0}, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;-><init>(Ljava/util/UUID;[BZ)V

    return-object v1
.end method

.method public final getCryptoType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "<LA_URL>https://x</LA_URL>"

    const/16 v3, 0x17

    iget-object v4, v0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    if-eqz v1, :cond_17

    sget-object v5, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-nez v5, :cond_0

    goto/16 :goto_7

    :cond_0
    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v5, v9, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_5

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/DrmInitData$SchemeData;

    move v9, v8

    move v10, v9

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_3

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v12, v11, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v5, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v14, v11, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-static {v14, v13}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v11, v11, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v13, v5, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    invoke-static {v11, v13}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v12}, Landroidx/room/util/DBUtil;->parsePsshAtom([B)Lcom/adobe/xmp/impl/ByteBuffer;

    move-result-object v11

    if-eqz v11, :cond_1

    move v11, v6

    goto :goto_1

    :cond_1
    move v11, v8

    :goto_1
    if-eqz v11, :cond_2

    array-length v11, v12

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move v9, v8

    goto :goto_2

    :cond_3
    move v9, v6

    :goto_2
    if-eqz v9, :cond_5

    new-array v9, v10, [B

    move v10, v8

    move v11, v10

    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_4

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v12, v12, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v13, v12

    invoke-static {v12, v8, v9, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    new-instance v1, Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v10, v5, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v11, v5, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v5, v5, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-direct {v1, v5, v10, v11, v9}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_8

    :cond_5
    move v5, v8

    :goto_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_9

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v10, v9, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/room/util/DBUtil;->parsePsshAtom([B)Lcom/adobe/xmp/impl/ByteBuffer;

    move-result-object v10

    if-nez v10, :cond_6

    move v10, v7

    goto :goto_5

    :cond_6
    iget v10, v10, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    :goto_5
    sget v11, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-ge v11, v3, :cond_7

    if-nez v10, :cond_7

    goto :goto_6

    :cond_7
    if-lt v11, v3, :cond_8

    if-ne v10, v6, :cond_8

    :goto_6
    move-object v1, v9

    goto :goto_8

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    :goto_7
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/DrmInitData$SchemeData;

    :goto_8
    iget-object v5, v1, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v9, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-static {v4, v5}, Landroidx/room/util/DBUtil;->parseSchemeSpecificData(Ljava/util/UUID;[B)[B

    move-result-object v10

    if-nez v10, :cond_a

    goto :goto_9

    :cond_a
    move-object v5, v10

    :goto_9
    new-instance v10, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v10, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v11

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v12

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v13

    const-string v14, "FrameworkMediaDrm"

    if-ne v12, v6, :cond_e

    if-eq v13, v6, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v6

    sget-object v15, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v6, v15}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "<LA_URL>"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_b

    :cond_c
    const-string v5, "</DATA>"

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_d

    const-string v7, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    invoke-static {v14, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v11, v11, 0x34

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-short v7, v12

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v7, v13

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    int-to-short v7, v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    goto :goto_b

    :cond_e
    :goto_a
    const-string v6, "Unexpected record count or type. Skipping LA_URL workaround."

    invoke-static {v14, v6}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    if-eqz v5, :cond_f

    array-length v6, v5

    goto :goto_c

    :cond_f
    move v6, v8

    :goto_c
    add-int/lit8 v6, v6, 0x20

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v6, 0x70737368    # 3.013775E29f

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_10

    array-length v6, v5

    if-eqz v6, :cond_10

    array-length v6, v5

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_10
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    :cond_11
    sget v6, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-ge v6, v3, :cond_12

    sget-object v7, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v7, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    :cond_12
    invoke-virtual {v9, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string v7, "Amazon"

    sget-object v8, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    sget-object v7, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    const-string v8, "AFTB"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "AFTS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "AFTM"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "AFTT"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    :cond_13
    invoke-static {v4, v5}, Landroidx/room/util/DBUtil;->parseSchemeSpecificData(Ljava/util/UUID;[B)[B

    move-result-object v7

    if-eqz v7, :cond_14

    move-object v5, v7

    :cond_14
    const/16 v7, 0x1a

    iget-object v8, v1, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    if-ge v6, v7, :cond_16

    sget-object v6, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v6, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-string v6, "video/mp4"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "audio/mp4"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_15
    const-string v8, "cenc"

    :cond_16
    move-object v7, v5

    goto :goto_d

    :cond_17
    const/4 v1, 0x0

    move-object v7, v1

    move-object v8, v7

    :goto_d
    iget-object v5, v0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    move-object/from16 v6, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v5

    sget-object v6, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v6, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v6, 0x1b

    if-lt v4, v6, :cond_18

    goto :goto_e

    :cond_18
    invoke-static {v5}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v5

    :cond_19
    :goto_e
    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_f

    :cond_1a
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v6, 0x21

    if-ne v2, v6, :cond_1b

    const-string v2, "https://default.url"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :goto_f
    const-string v4, ""

    :cond_1b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_1c

    iget-object v1, v1, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    move-object v4, v1

    :cond_1c
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v1, v3, :cond_1d

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    :cond_1d
    new-instance v0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    invoke-direct {v0, v4, v5}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public final getProvisionRequest()Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object p0

    new-instance v0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    invoke-virtual {p0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public final openSession()[B
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object p0

    return-object p0
.end method

.method public final provideKeyResponse([B[B)[B
    .locals 9

    sget-object v0, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p2}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{\"keys\":["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "keys"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-eqz v2, :cond_1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "{\"k\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "k"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x2f

    const/16 v8, 0x5f

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"kid\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "kid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"kty\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "kty"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "]}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {p2}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to adjust response data: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClearKeyUtil"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final provideProvisionResponse([B)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    return-void
.end method

.method public final queryKeyStatus([B)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->referenceCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final requiresSecureDecoder(Ljava/lang/String;[B)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$Api31;->requiresSecureDecoder(Landroid/media/MediaDrm;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaCrypto;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-direct {v0, p0, p2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    throw p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public final restoreKeys([B[B)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    return-void
.end method

.method public final setOnEventListener(Landroidx/appcompat/widget/Toolbar$1;)V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;Landroidx/appcompat/widget/Toolbar$1;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p0, v0}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    return-void
.end method

.method public final setPlayerIdForSession([BLandroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$Api31;->setLogSessionIdOnMediaDrmSession(Landroid/media/MediaDrm;[BLandroidx/media3/exoplayer/analytics/PlayerId;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "FrameworkMediaDrm"

    const-string p1, "setLogSessionId failed."

    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
