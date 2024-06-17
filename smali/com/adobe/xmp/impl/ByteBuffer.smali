.class public final Lcom/adobe/xmp/impl/ByteBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;


# instance fields
.field public final synthetic $r8$classId:I

.field public buffer:Ljava/lang/Object;

.field public encoding:Ljava/lang/Object;

.field public length:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    iput p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->$r8$classId:I

    const/16 p2, 0x9

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p1, p2, :cond_2

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    .line 1
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 p2, 0x0

    const/4 v0, 0x4

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Ljava/io/Serializable;ILjava/lang/Object;I)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, v0, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    new-array p1, v0, [I

    :goto_0
    const/4 p2, -0x1

    if-ge v1, v0, :cond_1

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    iput p2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return-void

    .line 3
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, v0, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    iput v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/extractor/FlacStreamMetadata;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    iput p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    new-instance p1, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {p1}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    iput-object p2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    iput p3, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;I)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->$r8$classId:I

    .line 7
    invoke-direct {p0, p2, p1}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(ILandroidx/media3/extractor/FlacStreamMetadata;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 8
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Ljava/lang/Object;ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/manager/FontAssetManager;I)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->$r8$classId:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;-><init>()V

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    invoke-static {}, Lkotlin/UByte$Companion;->zza()V

    iput p2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)V
    .locals 1

    .line 10
    const/16 v0, 0xb

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->$r8$classId:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;I)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;I)V
    .locals 0

    const/16 p2, 0xb

    iput p2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->$r8$classId:I

    .line 11
    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    const/16 p1, 0xa

    iput p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/Serializable;ILjava/lang/Object;I)V
    .locals 0

    .line 12
    iput p4, p0, Lcom/adobe/xmp/impl/ByteBuffer;->$r8$classId:I

    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    iput p2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    iput-object p3, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/String;I)V
    .locals 0

    .line 13
    iput p4, p0, Lcom/adobe/xmp/impl/ByteBuffer;->$r8$classId:I

    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    iput p2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    iput-object p3, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->$r8$classId:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    iput-object p2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    iput p3, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lcom/adobe/xmp/impl/ByteBuffer;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    if-eq v4, v6, :cond_0

    goto :goto_0

    :cond_0
    if-ne v4, v5, :cond_18

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "gradient"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_2

    const-string v5, "selector"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0, v2, v3, v1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    new-instance v1, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-direct {v1, v9, v0, v2}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v1

    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": unsupported complex color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    sget-object v4, Landroidx/core/R$styleable;->GradientColor:[I

    invoke-static {v0, v1, v3, v4}, Landroidx/room/util/DBUtil;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const-string v7, "startX"

    const/16 v8, 0x8

    const/4 v10, 0x0

    invoke-static {v4, v2, v7, v8, v10}, Landroidx/room/util/DBUtil;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v12

    const-string v7, "startY"

    const/16 v8, 0x9

    invoke-static {v4, v2, v7, v8, v10}, Landroidx/room/util/DBUtil;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v13

    const-string v7, "endX"

    const/16 v8, 0xa

    invoke-static {v4, v2, v7, v8, v10}, Landroidx/room/util/DBUtil;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v14

    const-string v7, "endY"

    const/16 v8, 0xb

    invoke-static {v4, v2, v7, v8, v10}, Landroidx/room/util/DBUtil;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v15

    const-string v7, "centerX"

    const/4 v8, 0x3

    invoke-static {v4, v2, v7, v8, v10}, Landroidx/room/util/DBUtil;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v7

    const-string v11, "centerY"

    const/4 v9, 0x4

    invoke-static {v4, v2, v11, v9, v10}, Landroidx/room/util/DBUtil;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    const-string v11, "type"

    const/4 v8, 0x0

    invoke-static {v4, v2, v11, v5, v8}, Landroidx/room/util/DBUtil;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v11

    const-string v5, "startColor"

    invoke-static {v2, v5}, Landroidx/room/util/DBUtil;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v8

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v8, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    :goto_1
    const-string v10, "centerColor"

    invoke-static {v2, v10}, Landroidx/room/util/DBUtil;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v19

    invoke-static {v2, v10}, Landroidx/room/util/DBUtil;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    move v10, v8

    goto :goto_2

    :cond_4
    const/4 v10, 0x7

    invoke-virtual {v4, v10, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    :goto_2
    const-string v6, "endColor"

    invoke-static {v2, v6}, Landroidx/room/util/DBUtil;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v8

    goto :goto_3

    :cond_5
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v6, v21

    :goto_3
    move/from16 v21, v7

    const-string v7, "tileMode"

    move/from16 v22, v9

    const/4 v9, 0x6

    invoke-static {v4, v2, v7, v9, v8}, Landroidx/room/util/DBUtil;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v7

    const-string v9, "gradientRadius"

    const/4 v8, 0x5

    move/from16 v23, v15

    const/4 v15, 0x0

    invoke-static {v4, v2, v9, v8, v15}, Landroidx/room/util/DBUtil;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v8

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v9, 0x1

    add-int/2addr v4, v9

    new-instance v15, Ljava/util/ArrayList;

    const/16 v9, 0x14

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v24, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    :goto_4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move/from16 v25, v14

    const/4 v14, 0x1

    if-eq v9, v14, :cond_b

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    move/from16 v26, v13

    if-ge v14, v4, :cond_6

    const/4 v13, 0x3

    if-eq v9, v13, :cond_c

    :cond_6
    const/4 v13, 0x2

    if-eq v9, v13, :cond_7

    goto :goto_5

    :cond_7
    if-gt v14, v4, :cond_a

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v13, "item"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_5

    :cond_8
    sget-object v9, Landroidx/core/R$styleable;->GradientColorItem:[I

    invoke-static {v0, v1, v3, v9}, Landroidx/room/util/DBUtil;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    if-eqz v14, :cond_9

    if-eqz v20, :cond_9

    const/4 v14, 0x0

    invoke-virtual {v9, v14, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v27

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    move/from16 v14, v25

    move/from16 v13, v26

    goto :goto_4

    :cond_b
    move/from16 v26, v13

    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0, v8, v15}, Lcom/motorola/camera/CameraKpi;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_e

    goto :goto_7

    :cond_e
    new-instance v0, Lcom/motorola/camera/CameraKpi;

    if-eqz v19, :cond_f

    invoke-direct {v0, v5, v10, v6}, Lcom/motorola/camera/CameraKpi;-><init>(III)V

    goto :goto_7

    :cond_f
    invoke-direct {v0, v5, v6}, Lcom/motorola/camera/CameraKpi;-><init>(II)V

    :goto_7
    const/4 v1, 0x1

    if-eq v11, v1, :cond_13

    const/4 v2, 0x2

    if-eq v11, v2, :cond_12

    new-instance v3, Landroid/graphics/LinearGradient;

    iget-object v4, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, [I

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [F

    if-eq v7, v1, :cond_11

    if-eq v7, v2, :cond_10

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_8

    :cond_10
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_8

    :cond_11
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :goto_8
    move-object/from16 v18, v0

    move-object v11, v3

    move/from16 v13, v26

    move/from16 v14, v25

    move/from16 v15, v23

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_a

    :cond_12
    new-instance v3, Landroid/graphics/SweepGradient;

    iget-object v1, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, [F

    move/from16 v2, v21

    move/from16 v4, v22

    invoke-direct {v3, v2, v4, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    goto :goto_a

    :cond_13
    move/from16 v2, v21

    move/from16 v4, v22

    const/4 v1, 0x0

    cmpg-float v1, v24, v1

    if-lez v1, :cond_16

    new-instance v3, Landroid/graphics/RadialGradient;

    iget-object v1, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [F

    const/4 v0, 0x1

    if-eq v7, v0, :cond_15

    const/4 v0, 0x2

    if-eq v7, v0, :cond_14

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_9

    :cond_14
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_9

    :cond_15
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :goto_9
    move-object/from16 v22, v0

    move-object/from16 v16, v3

    move/from16 v17, v2

    move/from16 v18, v4

    move/from16 v19, v24

    move-object/from16 v20, v1

    invoke-direct/range {v16 .. v22}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_a
    new-instance v0, Lcom/adobe/xmp/impl/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0

    :cond_16
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid gradient color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final appendSpan(ILandroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;)V
    .locals 4

    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    :cond_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-lt p1, v0, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/Consumer;

    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final downstreamFormatChanged(Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 5

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    new-instance v3, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/4 v4, 0x5

    invoke-direct {v3, v4, p0, v2, p1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final findNextFrame(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 14

    :goto_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    iget-object v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/extractor/PositionHolder;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v6

    const/4 v3, 0x2

    new-array v8, v3, [B

    const/4 v9, 0x0

    invoke-interface {p1, v9, v3, v8}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    aget-byte v10, v8, v9

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x1

    aget-byte v12, v8, v11

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v10, v12

    if-eq v10, v1, :cond_0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    sub-long/2addr v6, v0

    long-to-int v0, v6

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_3

    :cond_0
    new-instance v10, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v12, 0x10

    invoke-direct {v10, v12}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v12, v10, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v8, v9, v12, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, v10, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    :goto_1
    const/16 v12, 0xe

    if-ge v9, v12, :cond_2

    add-int v12, v3, v9

    rsub-int/lit8 v13, v9, 0xe

    invoke-interface {p1, v12, v13, v8}, Landroidx/media3/extractor/ExtractorInput;->peek(II[B)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v9, v12

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v10, v9}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v3, v6

    invoke-interface {p1, v3}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    invoke-static {v10, v0, v1, v2}, Lokio/SegmentPool;->checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/PositionHolder;)Z

    move-result v9

    :goto_3
    if-nez v9, :cond_3

    invoke-interface {p1, v11}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    iget-object p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/FlacStreamMetadata;

    iget-wide p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    return-wide p0

    :cond_4
    iget-object p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/PositionHolder;

    iget-wide p0, p0, Landroidx/media3/extractor/PositionHolder;->position:J

    return-wide p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    :cond_0
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    iget p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getEndValue()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/util/SparseArray;

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aget-object v3, v3, v2

    instance-of v4, v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    if-eqz v4, :cond_1

    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v4

    sget-object v5, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$2:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v4, [I

    aget v4, v4, v2

    if-ltz v4, :cond_2

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    sget-object v4, Lkotlinx/coroutines/CoroutineId$Key;->INSTANCE$7:Lkotlinx/coroutines/CoroutineId$Key;

    if-eq v3, v4, :cond_2

    const-string v4, "[\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\']"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final handleFaceData([Landroid/hardware/camera2/params/Face;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCAFSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-boolean v3, v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    if-eqz v3, :cond_2

    return-void

    :cond_2
    if-eqz v1, :cond_21

    array-length v4, v1

    if-nez v4, :cond_3

    goto/16 :goto_15

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    invoke-static {}, Lkotlin/LazyKt__LazyKt;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sget-object v6, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v6, v6, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperRemosaicTriggers:[F

    aget v6, v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    const/4 v8, 0x1

    if-lez v6, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentPhotoTypeMode()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v8

    goto :goto_0

    :cond_4
    move v6, v4

    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v6, v6, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperRemosaicTriggers:[F

    div-float v10, v9, v5

    aget v11, v6, v4

    cmpl-float v12, v10, v11

    if-ltz v12, :cond_5

    aget v6, v6, v8

    cmpg-float v6, v10, v6

    if-gez v6, :cond_5

    mul-float/2addr v5, v11

    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x44fa0000    # 2000.0f

    div-float v6, v10, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRatioControlSupported()Z

    move-result v11

    xor-int/2addr v11, v8

    cmpl-float v12, v5, v7

    if-lez v12, :cond_6

    if-eqz v11, :cond_6

    div-float/2addr v6, v5

    div-float/2addr v10, v5

    :cond_6
    new-instance v13, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v14, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v15, 0x1c

    invoke-direct {v14, v15}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-array v14, v4, [Landroid/hardware/camera2/params/Face;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/hardware/camera2/params/Face;

    iget v15, v0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/hardware/camera2/params/Face;

    iget-object v14, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-boolean v14, v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-nez v14, :cond_13

    iget-object v14, v0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v14, [Landroid/hardware/camera2/params/Face;

    if-eqz v13, :cond_a

    if-eqz v14, :cond_a

    array-length v15, v14

    if-lez v15, :cond_a

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v13

    move v9, v4

    :goto_1
    if-ge v9, v3, :cond_8

    aget-object v7, v13, v9

    invoke-static {v14}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v4, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda4;

    move/from16 v16, v3

    const/4 v3, 0x5

    invoke-direct {v4, v7, v3}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v8, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    new-array v4, v3, [Landroid/hardware/camera2/params/Face;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/Face;

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v3, 0x0

    :goto_3
    iget-object v4, v0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v4, [Landroid/hardware/camera2/params/Face;

    if-eqz v4, :cond_c

    if-eqz v13, :cond_c

    array-length v7, v13

    if-eqz v7, :cond_c

    array-length v7, v13

    array-length v4, v4

    if-eq v7, v4, :cond_b

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v3, :cond_d

    array-length v7, v3

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    goto :goto_6

    :cond_d
    const/4 v7, 0x0

    :goto_6
    if-eqz v4, :cond_e

    move-object v3, v13

    goto :goto_8

    :cond_e
    iget-object v4, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-wide v8, v4, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J

    const-wide/16 v14, 0x0

    cmp-long v8, v8, v14

    if-eqz v8, :cond_11

    if-eqz v7, :cond_f

    goto :goto_7

    :cond_f
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-object v4, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-wide v14, v4, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J

    sub-long/2addr v7, v14

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const-wide/16 v7, 0x5dc

    cmp-long v3, v3, v7

    if-lez v3, :cond_10

    iput-object v13, v0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    const/4 v3, 0x0

    goto :goto_8

    :cond_10
    iget-object v3, v0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v3, [Landroid/hardware/camera2/params/Face;

    goto :goto_8

    :cond_11
    :goto_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLastFaceDetectionTime:J

    :goto_8
    if-eqz v3, :cond_12

    array-length v4, v3

    if-lez v4, :cond_12

    iput-object v3, v0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    iget-object v3, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    const/4 v4, 0x1

    goto :goto_9

    :cond_12
    iget-object v3, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(Z)V

    :cond_13
    if-lez v12, :cond_14

    if-eqz v11, :cond_14

    goto :goto_a

    :cond_14
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_a
    const/high16 v3, -0x3b860000    # -1000.0f

    div-float v4, v3, v5

    const/4 v5, 0x0

    :goto_b
    iget v7, v0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-ge v5, v7, :cond_20

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iget-object v8, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;

    array-length v9, v13

    if-ge v5, v9, :cond_15

    const/4 v9, 0x1

    goto :goto_c

    :cond_15
    const/4 v9, 0x0

    :goto_c
    if-eqz v9, :cond_1a

    aget-object v11, v13, v5

    invoke-virtual {v11}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget-object v14, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-boolean v15, v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsFaceDetectModelFull:Z

    if-nez v15, :cond_16

    array-length v15, v1

    const/4 v3, 0x1

    if-ne v15, v3, :cond_17

    iget-object v3, v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/google/android/material/color/utilities/QuantizerMap;

    monitor-enter v3

    :try_start_0
    iget-object v12, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v12, v12, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/google/android/material/color/utilities/QuantizerMap;

    invoke-virtual {v12, v11}, Lcom/google/android/material/color/utilities/QuantizerMap;->addFace(Landroid/hardware/camera2/params/Face;)V

    monitor-exit v3

    goto :goto_d

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_16
    iget-object v3, v14, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/google/android/material/color/utilities/QuantizerMap;

    monitor-enter v3

    :try_start_1
    iget-object v12, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v12, v12, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/google/android/material/color/utilities/QuantizerMap;

    invoke-virtual {v12, v11}, Lcom/google/android/material/color/utilities/QuantizerMap;->addFace(Landroid/hardware/camera2/params/Face;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_d
    iget-object v3, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/google/android/material/color/utilities/QuantizerMap;

    invoke-virtual {v3, v11}, Lcom/google/android/material/color/utilities/QuantizerMap;->getFilteredFaceRect(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Rect;

    move-result-object v12

    :cond_17
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result v11

    if-eqz v11, :cond_18

    if-eqz v3, :cond_18

    const/4 v11, 0x0

    aget v3, v3, v11

    const/4 v11, 0x0

    cmpl-float v3, v3, v11

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    goto :goto_e

    :cond_18
    const/4 v3, 0x0

    :goto_e
    if-nez v3, :cond_19

    invoke-virtual {v12, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_19
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-static {}, Lkotlin/LazyKt__LazyKt;->getPreviewRectSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v11

    iget v14, v11, Lcom/motorola/camera/PreviewSize;->width:I

    iget v11, v11, Lcom/motorola/camera/PreviewSize;->height:I

    iget v15, v12, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v16

    sub-int v1, v16, v14

    int-to-float v1, v1

    const/high16 v16, 0x40000000    # 2.0f

    div-float v1, v1, v16

    sub-float/2addr v15, v1

    mul-float/2addr v15, v10

    iget v1, v12, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v17

    move-object/from16 v18, v2

    sub-int v2, v17, v11

    int-to-float v2, v2

    div-float v2, v2, v16

    sub-float/2addr v1, v2

    mul-float/2addr v1, v6

    iget v2, v12, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v17

    sub-int v14, v17, v14

    int-to-float v14, v14

    div-float v14, v14, v16

    sub-float/2addr v2, v14

    mul-float/2addr v2, v10

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v11

    int-to-float v3, v3

    div-float v3, v3, v16

    sub-float/2addr v12, v3

    mul-float/2addr v12, v6

    invoke-virtual {v7, v15, v1, v2, v12}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v7, v4, v4}, Landroid/graphics/RectF;->offset(FF)V

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v11, -0x3b860000    # -1000.0f

    invoke-direct {v1, v11, v11, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    neg-float v1, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v3

    neg-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v7, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_f

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1a
    move-object/from16 v18, v2

    move v11, v3

    :goto_f
    iget-object v1, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraFacing:I

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraToDisplayOrientation:I

    monitor-enter v8

    :try_start_3
    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v1, v8, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->mVertices:[F

    iget v2, v7, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, v7, Landroid/graphics/RectF;->top:F

    const/16 v12, 0xa

    aput v2, v1, v12

    const/4 v12, 0x1

    aput v2, v1, v12

    iget v2, v7, Landroid/graphics/RectF;->bottom:F

    const/4 v14, 0x7

    aput v2, v1, v14

    const/4 v14, 0x4

    aput v2, v1, v14

    iget v2, v7, Landroid/graphics/RectF;->right:F

    const/16 v7, 0x9

    aput v2, v1, v7

    const/4 v7, 0x6

    aput v2, v1, v7

    if-eqz v9, :cond_1b

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_1b
    const/high16 v1, 0x42480000    # 50.0f

    :goto_10
    const/4 v2, 0x0

    invoke-virtual {v8, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$TouchFaceTexture;->updateTouchRect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v8

    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object v1, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-boolean v1, v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-eqz v1, :cond_1c

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v8, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_11

    :cond_1c
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_11
    sget v7, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->WHITE_COLOR:I

    invoke-virtual {v8, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    if-eqz v9, :cond_1d

    iget-object v7, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-static {v7}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->-$$Nest$misPhotoTapAnywhere(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)Z

    move-result v7

    if-eqz v7, :cond_1d

    move v7, v12

    goto :goto_12

    :cond_1d
    move v7, v3

    :goto_12
    invoke-virtual {v8, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    if-nez v9, :cond_1e

    goto :goto_13

    :cond_1e
    iget-object v7, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-static {v7}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->-$$Nest$misPhotoTapAnywhere(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;)Z

    move-result v7

    if-eqz v7, :cond_1f

    move v7, v12

    goto :goto_14

    :cond_1f
    :goto_13
    move v7, v3

    :goto_14
    invoke-virtual {v8, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move v3, v11

    move-object/from16 v2, v18

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_20
    return-void

    :cond_21
    :goto_15
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceFilter:Lcom/google/android/material/color/utilities/QuantizerMap;

    iget-object v1, v1, Lcom/google/android/material/color/utilities/QuantizerMap;->colorToCount:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->shouldShowTip()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    iget-object v0, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    return-void
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Shader;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadCanceled(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 9

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    iget-object v4, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    new-instance v8, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/adobe/xmp/impl/ByteBuffer;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    invoke-static {v1, v8}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final loadCompleted(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 9

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    iget-object v4, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    new-instance v8, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    const/4 v7, 0x2

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/adobe/xmp/impl/ByteBuffer;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    invoke-static {v1, v8}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/common/Format;JJLjava/io/IOException;Z)V
    .locals 11

    .line 1
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v10, Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    invoke-static/range {p5 .. p6}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    move-object v0, v10

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    move/from16 v3, p8

    invoke-virtual {p0, p1, v10, v2, v3}, Lcom/adobe/xmp/impl/ByteBuffer;->loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    iget-object v4, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    new-instance v10, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;

    const/4 v9, 0x1

    move-object v2, v10

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZI)V

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    invoke-static {v1, v10}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final loadStarted(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 9

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    iget-object v4, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    new-instance v8, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/adobe/xmp/impl/ByteBuffer;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    invoke-static {v1, v8}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStateChanged([I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final resize()V
    .locals 3

    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    return-void
.end method

.method public final searchForTimestamp(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/appcompat/app/TwilightCalculator;
    .locals 14

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/ByteBuffer;->findNextFrame(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v1

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v5

    move-object v0, p0

    iget-object v7, v0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v7, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v7, v7, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    const/4 v8, 0x6

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object v8, p1

    invoke-interface {p1, v7}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/ByteBuffer;->findNextFrame(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v9

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v11

    cmp-long v0, v1, p2

    if-gtz v0, :cond_0

    cmp-long v0, v9, p2

    if-lez v0, :cond_0

    invoke-static {v5, v6}, Landroidx/appcompat/app/TwilightCalculator;->targetFoundResult(J)Landroidx/appcompat/app/TwilightCalculator;

    move-result-object v0

    return-object v0

    :cond_0
    cmp-long v0, v9, p2

    if-gtz v0, :cond_1

    new-instance v0, Landroidx/appcompat/app/TwilightCalculator;

    const/4 v13, -0x2

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Landroidx/appcompat/app/TwilightCalculator;-><init>(JJI)V

    return-object v0

    :cond_1
    new-instance v6, Landroidx/appcompat/app/TwilightCalculator;

    const/4 v5, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/app/TwilightCalculator;-><init>(JJI)V

    return-object v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V
    .locals 4

    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    add-int/2addr v0, v0

    if-le v0, v2, :cond_3

    if-ltz v0, :cond_2

    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    add-int v2, v0, v0

    :cond_0
    if-gez v2, :cond_1

    const v2, 0x7fffffff

    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "cannot store more than MAX_VALUE elements"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int v2, v1, v1

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_common/zzbc;
    .locals 2

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzas;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzbc;->zzg(I[Ljava/lang/Object;Lcom/adobe/xmp/impl/ByteBuffer;)Lcom/google/android/gms/internal/mlkit_common/zzbc;

    move-result-object v0

    iget-object p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_common/zzas;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public final zze(I)[B
    .locals 9

    xor-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzi:Ljava/lang/Object;

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->zzg:Ljava/lang/Object;

    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/manager/FontAssetManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpz;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzky;)V

    iput-object v3, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Lkotlin/UByte$Companion;->zza()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    sget-object v0, Lkotlin/UNINITIALIZED_VALUE;->zza$2:Lkotlin/UNINITIALIZED_VALUE;

    if-nez p1, :cond_1

    :try_start_1
    iget-object p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/manager/FontAssetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;-><init>(Lcom/airbnb/lottie/manager/FontAssetManager;)V

    new-instance p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lkotlin/UNINITIALIZED_VALUE;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    iput-boolean v2, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    iget-object v5, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->objectEncoders:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->valueEncoders:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->fallbackEncoder:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;

    iget-boolean v8, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;-><init>(Ljava/io/StringWriter;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;Z)V

    invoke-virtual {v1, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    invoke-virtual {v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    iget-object p0, v1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "utf-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/manager/FontAssetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;-><init>(Lcom/airbnb/lottie/manager/FontAssetManager;)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;-><init>()V

    invoke-virtual {v0, p0}, Lkotlin/UNINITIALIZED_VALUE;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzc:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzd:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdn;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;

    invoke-direct {v3, v2, v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznh;

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/ObjectEncoder;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, v3}, Lcom/google/firebase/encoders/Encoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/google/gson/JsonParseException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "No encoder for "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    invoke-direct {p1, v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
