.class public final Lcom/motorola/camera/cli/onboard/model/Onboard;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final image:I

.field public final text:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->image:I

    iput p2, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->text:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    iget v1, p1, Lcom/motorola/camera/cli/onboard/model/Onboard;->image:I

    iget v3, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->image:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->text:I

    iget p1, p1, Lcom/motorola/camera/cli/onboard/model/Onboard;->text:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->image:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->text:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Onboard(image="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->image:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/cli/onboard/model/Onboard;->text:I

    const-string v1, ", isAnimation=true)"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
