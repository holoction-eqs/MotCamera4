.class public final Lcom/motorola/camera/mcf/McfAuxBmpData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final CNAME:Ljava/lang/String; = "McfAuxBmpData"

.field public static final FORMAT_BMP:Ljava/lang/String; = "BMP_DATA"


# instance fields
.field private final mBuffer:[B

.field private final mFormat:Ljava/lang/String;

.field private final mHeight:I

.field private final mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

.field private final mName:Ljava/lang/String;

.field private final mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mBuffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mWidth:I

    iput v0, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mHeight:I

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mBuffer:[B

    return-object p0
.end method

.method public getBufferLength()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mBuffer:[B

    array-length p0, p0

    return p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mHeight:I

    return p0
.end method

.method public getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mWidth:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "McfAuxBinData{mName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mFormat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxBmpData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBuffer size ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxBmpData;->getBufferLength()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
