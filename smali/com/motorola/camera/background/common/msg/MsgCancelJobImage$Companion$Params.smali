.class public final Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params$Companion;


# instance fields
.field public final jobContext:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;->jobContext:Ljava/lang/String;

    return-void

    .line 1
    :cond_0
    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 2
    invoke-static {p1, v1, p0}, Lkotlin/time/DurationKt;->throwMissingFieldException(IILkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    const-string v0, "jobContext"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;->jobContext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;

    iget-object p0, p0, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;->jobContext:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Params(jobContext="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/background/common/msg/MsgCancelJobImage$Companion$Params;->jobContext:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
