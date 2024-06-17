.class public final Lcom/motorola/camera/mcf/McfAuxFrameData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final CNAME:Ljava/lang/String; = "McfAuxFrameData"

.field public static final FORMAT_JPEG:Ljava/lang/String; = "JPEG"

.field public static final FORMAT_NV21:Ljava/lang/String; = "NV21"

.field public static final MNAME_DEPTH_MAP:Ljava/lang/String; = "DepthMap"

.field public static final MNAME_DOC_SCAN:Ljava/lang/String; = "DOC_SCAN_BMP_DATA"

.field public static final MNAME_POST_VIEW_FRAME:Ljava/lang/String; = "PostViewFrame"


# instance fields
.field private final mAuxHeight:I

.field private final mAuxStride:I

.field private final mAuxWidth:I

.field private final mAuxilaryBuffer:[B

.field private final mAuxilaryBufferFid:I

.field private final mFormat:Ljava/lang/String;

.field private final mGoodRoiHeight:I

.field private final mGoodRoiWidth:I

.field private final mGoodRoiX:I

.field private final mGoodRoiY:I

.field private final mHeight:I

.field private final mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

.field private final mName:Ljava/lang/String;

.field private final mPrimaryBuffer:[B

.field private final mPrimaryBufferFid:I

.field private final mStride:I

.field private final mText:Ljava/lang/String;

.field private final mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mWidth:I

    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mHeight:I

    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mStride:I

    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxWidth:I

    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxHeight:I

    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxStride:I

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBuffer:[B

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBuffer:[B

    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBufferFid:I

    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBufferFid:I

    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiX:I

    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiY:I

    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiWidth:I

    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    .line 2
    const-string v0, "height"

    const-string v1, "width"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "name"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mName:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mText:Ljava/lang/String;

    const-string v2, "format"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mFormat:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    const-string v3, "bufferParams"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mWidth:I

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mHeight:I

    const-string v4, "stride"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mStride:I

    const-string v4, "auxWidth"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxWidth:I

    const-string v4, "auxHeight"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxHeight:I

    const-string v4, "auxStride"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxStride:I

    const-string v3, "primary"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "fid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBufferFid:I

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBuffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBufferFid:I

    iput-object v2, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBuffer:[B

    const-string p1, "goodROI"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "left"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiX:I

    const-string p2, "top"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiY:I

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiWidth:I

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiHeight:I

    return-void
.end method


# virtual methods
.method public getAuxHeight()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxWidth:I

    return p0
.end method

.method public getAuxStride()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxStride:I

    return p0
.end method

.method public getAuxWidth()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxWidth:I

    return p0
.end method

.method public getAuxiliary()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBuffer:[B

    return-object p0
.end method

.method public getAuxiliaryLength()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBuffer:[B

    array-length p0, p0

    return p0
.end method

.method public getChroma()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBuffer:[B

    return-object p0
.end method

.method public getChromaLength()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBuffer:[B

    array-length p0, p0

    return p0
.end method

.method public getData()[B
    .locals 2

    const-string v0, "NV21"

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getLuma()[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "JPEG"

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getPrimary()[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getGoodRoiHeight()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiHeight:I

    return p0
.end method

.method public getGoodRoiWidth()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiWidth:I

    return p0
.end method

.method public getGoodRoiX()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiX:I

    return p0
.end method

.method public getGoodRoiY()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiY:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mHeight:I

    return p0
.end method

.method public getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    return-object p0
.end method

.method public getLuma()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBuffer:[B

    return-object p0
.end method

.method public getLumaLength()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBuffer:[B

    array-length p0, p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPrimary()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBuffer:[B

    return-object p0
.end method

.method public getPrimaryLength()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBuffer:[B

    array-length p0, p0

    return p0
.end method

.method public getStride()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mStride:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mWidth:I

    return p0
.end method

.method public getmPrimaryBufferFid()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBufferFid:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "McfAuxFrameData{mName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mFormat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mStride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAuxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAuxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAuxStride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxStride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGoodRoiX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGoodRoiY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGoodRoiWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGoodRoiHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
