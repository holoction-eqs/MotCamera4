.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field public static final DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field public static final MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    const-string v0, "Camera:MicroVideo"

    const-string v1, "GCamera:MicroVideo"

    const-string v2, "Camera:MotionPhoto"

    const-string v3, "GCamera:MotionPhoto"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzel;->MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

    const-string v0, "Camera:MicroVideoPresentationTimestampUs"

    const-string v1, "GCamera:MicroVideoPresentationTimestampUs"

    const-string v2, "Camera:MotionPhotoPresentationTimestampUs"

    const-string v3, "GCamera:MotionPhotoPresentationTimestampUs"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzel;->DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

    const-string v0, "Camera:MicroVideoOffset"

    const-string v1, "GCamera:MicroVideoOffset"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzel;->DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public static parseInternal(Ljava/lang/String;)Landroidx/recyclerview/widget/ChildHelper$Bucket;
    .locals 20

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/StringReader;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "x:xmpmeta"

    invoke-static {v0, v1}, Lcom/adobe/xmp/XMPUtils;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    sget-object v2, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v2, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v4

    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v8, "rdf:Description"

    invoke-static {v0, v8}, Lcom/adobe/xmp/XMPUtils;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzel;->MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x4

    if-ge v7, v8, :cond_2

    aget-object v9, v2, v7

    invoke-static {v0, v9}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_1
    if-nez v7, :cond_3

    return-object v3

    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzel;->DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v9, v2, v7

    invoke-static {v0, v9}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-nez v2, :cond_6

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    move-wide v7, v4

    :cond_6
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzel;->DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

    :goto_4
    const/4 v9, 0x2

    if-ge v6, v9, :cond_8

    aget-object v10, v2, v6

    invoke-static {v0, v10}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    new-instance v2, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    const-string v17, "image/jpeg"

    const-wide/16 v15, 0x0

    const-wide/16 v18, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v19}, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(JLjava/lang/String;J)V

    new-instance v6, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    const-string v14, "video/mp4"

    move-object v11, v6

    invoke-direct/range {v11 .. v16}, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(JLjava/lang/String;J)V

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v2}, Lkotlin/io/ExceptionsKt;->checkElementsNotNull(I[Ljava/lang/Object;)V

    invoke-static {v9, v2}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v2

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    sget-object v2, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v2, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    :goto_5
    move-wide v6, v7

    goto :goto_7

    :cond_9
    const-string v8, "Container:Directory"

    invoke-static {v0, v8}, Lcom/adobe/xmp/XMPUtils;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v2, "Container"

    const-string v8, "Item"

    goto :goto_6

    :cond_a
    const-string v8, "GContainer:Directory"

    invoke-static {v0, v8}, Lcom/adobe/xmp/XMPUtils;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v2, "GContainer"

    const-string v8, "GContainerItem"

    :goto_6
    invoke-static {v0, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzel;->parseMotionPhotoV1Directory(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v2

    :cond_b
    :goto_7
    invoke-static {v0, v1}, Lcom/adobe/xmp/XMPUtils;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v3

    :cond_c
    new-instance v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-direct {v0, v6, v7, v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>(JLcom/google/common/collect/RegularImmutableList;)V

    return-object v0

    :cond_d
    const-string v0, "Couldn\'t find xmp metadata"

    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static parseMotionPhotoV1Directory(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/RegularImmutableList;
    .locals 13

    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    const/4 v0, 0x4

    const-string v1, "initialCapacity"

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyKt;->checkNonnegative(ILjava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ":Item"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":Directory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {p0, v1}, Lcom/adobe/xmp/XMPUtils;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, ":Mime"

    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":Semantic"

    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":Length"

    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":Padding"

    invoke-virtual {p2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v3}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v4}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v5}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v6}, Lcom/adobe/xmp/XMPUtils;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v10, :cond_5

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v3, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_2

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_0

    :cond_2
    move-wide v8, v6

    :goto_0
    if-eqz v5, :cond_3

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v11, v4

    goto :goto_1

    :cond_3
    move-wide v11, v6

    :goto_1
    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(JLjava/lang/String;J)V

    add-int/lit8 v4, v2, 0x1

    array-length v5, v0

    if-ge v5, v4, :cond_4

    array-length v5, v0

    invoke-static {v5, v4}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :cond_4
    aput-object v3, v0, v2

    move v2, v4

    goto :goto_3

    :cond_5
    :goto_2
    sget-object p0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    return-object p0

    :cond_6
    :goto_3
    invoke-static {p0, p1}, Lcom/adobe/xmp/XMPUtils;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    return-object p0
.end method
