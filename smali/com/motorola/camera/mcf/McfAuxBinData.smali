.class public final Lcom/motorola/camera/mcf/McfAuxBinData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final CNAME:Ljava/lang/String; = "McfAuxBinData"

.field public static final FORMAT_APP6:Ljava/lang/String; = "BIN_DATA"

.field public static final FORMAT_JPEG:Ljava/lang/String; = "JPEG_DATA"

.field private static final MNAME_APPX:Ljava/lang/String; = "JPEG_APPX"

.field public static final MTEXT_APPX_ID:Ljava/lang/String; = "6"


# instance fields
.field private final mAuxilaryBuffer:[B

.field private final mFormat:Ljava/lang/String;

.field private final mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

.field private final mName:Ljava/lang/String;

.field private final mPrimaryBuffer:[B

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mPrimaryBuffer:[B

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mAuxilaryBuffer:[B

    return-void
.end method


# virtual methods
.method public getAppXId()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mText:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAuxiliary()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mAuxilaryBuffer:[B

    return-object p0
.end method

.method public getAuxiliaryLength()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mAuxilaryBuffer:[B

    array-length p0, p0

    return p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPrimary()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mPrimaryBuffer:[B

    return-object p0
.end method

.method public getPrimaryLength()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mPrimaryBuffer:[B

    array-length p0, p0

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public isAppXData()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mName:Ljava/lang/String;

    const-string v0, "JPEG_APPX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "McfAuxBinData{mName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mFormat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPrimary size ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimaryLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAuxiliary size ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxBinData;->getAuxiliaryLength()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
