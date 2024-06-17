.class public final Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final modelFd:I

.field public final modelHash:Ljava/lang/String;

.field public final modelName:Ljava/lang/String;

.field public final modelOffset:I

.field public final modelSize:I

.field public final modelVersion:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "modelName"

    invoke-static {p5, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelFd:I

    iput p2, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelOffset:I

    iput p3, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelSize:I

    iput p4, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelVersion:I

    iput-object p5, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelName:Ljava/lang/String;

    iput-object p6, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelHash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    iget v1, p1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelFd:I

    iget v3, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelFd:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelOffset:I

    iget v3, p1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelOffset:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelSize:I

    iget v3, p1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelSize:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelVersion:I

    iget v3, p1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelVersion:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelName:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelHash:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelHash:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelFd:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelOffset:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelSize:I

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelVersion:I

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(III)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelHash:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "McfMlModelResourceFile(modelFd="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelFd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modelOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modelSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modelVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modelHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;->modelHash:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
