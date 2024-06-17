.class public final Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$Companion;


# instance fields
.field public final stepsCompleted:I

.field public final stepsTotal:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$Companion;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsCompleted:I

    iput p3, p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsTotal:I

    return-void

    :cond_0
    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-static {p1, v1, p0}, Lkotlin/time/DurationKt;->throwMissingFieldException(IILkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;

    iget v1, p1, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsCompleted:I

    iget v3, p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsCompleted:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsTotal:I

    iget p1, p1, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsTotal:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsCompleted:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsTotal:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Params(stepsCompleted="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsCompleted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stepsTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/background/common/msg/MsgProgressIndicator$Companion$Params;->stepsTotal:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
